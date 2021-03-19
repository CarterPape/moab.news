module Jekyll
    class WalkDirectoryTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @text = text
            @tokens = tokens
        end
        
        def render(context)
            Dir.chdir(@tokens[0])
        end
    end
end

# Liquid::Template.register_tag('walk_directory', Jekyll::WalkDirectoryTag)
