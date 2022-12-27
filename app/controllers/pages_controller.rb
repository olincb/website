class PagesController < ApplicationController
    def download_resume_pdf
        send_file(
            "#{Rails.root}/app/assets/documents/Chris Olin Resume.pdf",
            disposition: 'attachment',
            filename: "Chris Olin Resume.pdf",
            type: "application/pdf"
          )
    end

    def projects

        @projects = markdown_list "projects"
        # move the projects I want to highlight to the top of the list
        @projects.insert(0, @projects.delete('This website'))
        @projects.insert(0, @projects.delete('Smart Lights Controller'))
        @projects.insert(0, @projects.delete('Wacket'))
        # and less importand projects to the bottom of the list
        @projects.insert(-1, @projects.delete('CAD Lock'))
        # ... otherwise, the order is unimportant
        puts @projects
    end

    def blog
        @blog_posts = markdown_list "blogs"
        # reverse chronological order
        @blog_posts.reverse!
        puts @blog_posts
    end

    def markdown_list (name)
        files = Dir["#{Rails.root}/app/views/markdown/#{name}/*.md"]
        files.map! { |filepath| filepath.split('_')[-1].chop.chop.chop } # chop chop chop!!! (get rid of ".md")
        files
    end
      
end