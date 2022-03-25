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
        @projects = ["testproject1", "testproject2", "CAD Lock"]
    end
      
end