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
        puts @projects
    end
      
end