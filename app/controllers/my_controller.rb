class MyController < ApplicationController
  include RailsOrg::Admin

  before_action :require_login
  #before_action :require_session_organ

end
