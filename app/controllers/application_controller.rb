class ApplicationController < ActionController::Base
  skip_forgery_protection
  before_action :authenticate_user!
end
# added before action inside (not sure where it's gotta be)
