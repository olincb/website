module MarkdownTemplateHandler  
    
  def self.call(template, source = nil)
  
    compiled_source = if source
      erb.call(template, source)
    else
      erb.call(template)
    end
    
    %(Redcarpet::Markdown.new(CodeRayify.new(:filter_html => false, 
                                            :hard_wrap => false),
                            no_intra_emphasis:            true,
                            fenced_code_blocks:           true,
                            space_after_headers:          false,
                            smartypants:                  true,
                            disable_indented_code_blocks: false,
                            prettify:                     true,
                            tables:                       true,
                            with_toc_data:                true,
                            autolink:                     true
                          ).render(begin;#{compiled_source};end).html_safe)
                          
  end
end
