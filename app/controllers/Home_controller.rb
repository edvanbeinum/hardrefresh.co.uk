class HomeController < ApplicationController
  def index
    ua = AgentOrange::UserAgent.new request.env["HTTP_USER_AGENT"]
    @device = ua.device
    @os = ua.device.platform
    @instruction = Instruction.where(platform_id: 3, browser_id:  2).first
  end
end
