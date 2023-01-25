class ApplicationController < ActionController::Base
    skip_before_action :check_for_lockup, raise: false, except: [:blog, :blog_img]
end
