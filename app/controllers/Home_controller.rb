class HomeController < ApplicationController
  def index
    ua = AgentOrange::UserAgent.new request.env["HTTP_USER_AGENT"]
    @device = ua.device
    @os = ua.device.platform
  end
end
