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

        @projects = Dir["#{Rails.root}/app/views/markdown/projects/*.md"]
        @projects.map! { |filepath| filepath.split('_')[-1].chop.chop.chop } # chop chop chop!!! (get rid of ".md")
        # move the projects I want to highlight to the top of the list
        @projects.insert(0, @projects.delete('This website'))
        @projects.insert(0, @projects.delete('Smart Lights Controller'))
        @projects.insert(0, @projects.delete('Wacket'))
        # and less importand projects to the bottom of the list
        @projects.insert(-1, @projects.delete('CAD Lock'))
        # ... otherwise, the order is unimportant
        puts @projects
    end
      
end