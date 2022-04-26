module MarkdownTemplateHandler  
    
  def self.call(template, source = nil)
  
    compiled_source = if source
      erb.call(template, source)
    else
      erb.call(template)
    end

    %(MarkdownRenderer.render(begin;#{compiled_source};end))
                          
  end
end
