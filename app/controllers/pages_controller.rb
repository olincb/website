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
        @blog_posts.sort!
        # reverse chronological order
        @blog_posts.reverse!
        puts @blog_posts
    end

    def blog_post
        all_posts = markdown_list "blogs"
        post_date = params[:post_date]
        matching_posts = all_posts.select { |title|
            title.include? post_date
        }
        if matching_posts.empty?
            # return 404
            raise ActionController::RoutingError.new('Not Found')
        end
        @post_title = matching_posts[0] # there should only be 1
        puts @post_title
        render partial: "markdown/blogs/#{@post_title}", layout: false
    end

    def markdown_list (name)
        files = Dir["#{Rails.root}/app/views/markdown/#{name}/*.md"]
        files.map! { |filepath| filepath.split('_')[-1].chop.chop.chop } # chop chop chop!!! (get rid of ".md")
        files
    end
      
end
