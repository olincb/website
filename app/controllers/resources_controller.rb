class ResourcesController < ApplicationController
    def blog_img
        image_name = params[:image_name] + File.extname(request.path)
        s3_signer = Aws::S3::Presigner.new
        s3_link = s3_signer.presigned_url(:get_object, bucket: "olincb-photos", key: "blog/#{image_name}")
        redirect_to s3_link
    end
end
