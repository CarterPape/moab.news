module Jekyll
    class DraftTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @text = text.gsub(/(^[" ]+)|([" ]+$)/, "")
            @tokens = tokens
        end
        
        def render(context)
            "<span class='draft-language' title='draft language; this may change later'>" + @text + "</span>"
        end
    end
end

Liquid::Template.register_tag('draft', Jekyll::DraftTag)
