# the naming of this file is intentional. it should come before anything that uses it, alphabetically.

module MarkdownRenderer
    puts "Instantiating markdown renderer."

    @renderer = Redcarpet::Markdown.new(CodeRayify.new(:filter_html => false, 
                                                       :hard_wrap =>   false),
                                        no_intra_emphasis:             true,
                                        fenced_code_blocks:            true,
                                        space_after_headers:           false,
                                        smartypants:                   true,
                                        disable_indented_code_blocks:  false,
                                        prettify:                      true,
                                        tables:                        true,
                                        with_toc_data:                 true,
                                        autolink:                      true
                                        )
    
    def self.render(source)
        @renderer.render(source).html_safe
    end
end