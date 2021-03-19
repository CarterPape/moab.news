module ReduceTitleRedundancy
    class Generator < Jekyll::Generator
        attr_accessor :site
        TITLE_REGEX =
            %r!
                \A\s*
                    (?:
                        \#\s+
                        (.*)
                        (?:\s+\#)?
                    )
                $
            !x.freeze
        
        CONVERTER_CLASS = Jekyll::Converters::Markdown
        STRIP_MARKUP_FILTERS = [:markdownify, :strip_html, :normalize_whitespace].freeze
        
        # Regex to strip extra markup still present after markdownify (footnotes at the moment).
        EXTRA_MARKUP_REGEX = %r!\[\^[^\]]*\]!.freeze
        
        CONFIG_KEY =        "reduce_title_redundancy"
        ENABLED_KEY =       "enabled"
        STRIP_TITLE_KEY =   "strip_title"
        
        def initialize(site)
            @site = site
            @title_is_generated = nil
        end
        
        def generate(site)
            @site = site
            return if disabled?
            
            documents = site.pages + site.docs_to_write
            
            documents.each do |document|
                next if document.is_a?(Jekyll::StaticFile)
                @title_is_generated = nil
                
                document.data["title"] = title_for(document) if should_add_title?(document)
                strip_title!(document) if should_strip_title?(document)
                document.data["slug"] = slug_for(document) if should_add_slug?(document)
            end
        end
        
        def should_add_title?(document)
            @title_is_generated = markdown?(document) && !title?(document)
            return @title_is_generated
        end
        
        def should_add_slug?(document)
            return ((not production_environment?()) and empty_slug?(document))
        end
        
        def production_environment?()
            return false
            # return (ENV['JEKYLL_ENV'] || "development") == "production"
        end
        
        def empty_slug?(document)
            return ((\
                document.data["slug"].nil?\
            ) or (\
                document.data["slug"] == ""\
            ))
        end
        
        def title?(document)
            return !inferred_title?(document) && !document.data["title"].nil?
        end
        
        def markdown?(document)
            return markdown_converter.matches(document.extname)
        end
        
        def markdown_converter
            @markdown_converter ||= site.find_converter_instance(CONVERTER_CLASS)
            return @markdown_converter
        end
        
        def title_for(document)
            return document.data["title"] if title?(document)
            
            matches = document.content.to_s.match(TITLE_REGEX)
            return strip_markup(matches[1] || matches[2]) if matches
            
            return document.data["title"]
        rescue ArgumentError => e
            raise e unless e.to_s.start_with?("invalid byte sequence in UTF-8")
        end
        
        def slug_for(document)
            return Jekyll::Utils::slugify(
                document.data["title"],
                mode: "ascii",
            )
        rescue ArgumentError => e
            raise e unless e.to_s.start_with?("invalid byte sequence in UTF-8")
        end
        
        private
        
        def strip_markup(string)
            STRIP_MARKUP_FILTERS.reduce(string) do |memo, method|
                filters.public_send(method, memo)
            end.gsub(EXTRA_MARKUP_REGEX, "")
        end
        
        def option(key)
            return site.config[CONFIG_KEY] && site.config[CONFIG_KEY][key]
        end
        
        def disabled?
            return option(ENABLED_KEY) == false
        end
        
        def should_strip_title?(document)
            return false if not @title_is_generated
            
            if document.data.key?(STRIP_TITLE_KEY)
                return document.data[STRIP_TITLE_KEY] == true
            else
                return option(STRIP_TITLE_KEY) == true
            end
        end
        
        def strip_title_excerpt?(document)
            return document.is_a?(Jekyll::Document) &&
                document.collection.label == "posts" &&
                document.generate_excerpt?
        end
        
        def collections?
            return option(COLLECTIONS_KEY) == true
        end
        
        # Documents (posts and collection items) have their title inferred from the filename. We want to override these titles, because they were not excplicitly set.
        def inferred_title?(document)
            return document.is_a?(Jekyll::Document)
        end
        
        def strip_title!(document)
            if document.content
                document.content = document.content.gsub(TITLE_REGEX, "").strip
                strip_title_excerpt!(document) if strip_title_excerpt?(document)
            end
        end
        
        def strip_title_excerpt!(document)
            document.data["excerpt"] = Jekyll::Excerpt.new(document) if document.generate_excerpt?
        end
        
        def filters
            @filters ||= ReduceTitleRedundancy::Filters.new(site)
            return @filters
        end
    end
    
    class Filters
        include Jekyll::Filters
        include Liquid::StandardFilters

        def initialize(site)
            @site    = site
            @context = ReduceTitleRedundancy::Context.new(site)
        end
    end
    
    class Context
        attr_reader :site
    
        def initialize(site)
            @site = site
        end
    
        def registers
            { :site => site }
        end
    end
end
