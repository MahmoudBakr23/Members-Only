class ApplicationController < ActionController::Base
  before_action :authenticate_member!, except: %i[new create]
end
