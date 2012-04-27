class HomeController < ApplicationController
  def index
    ua = AgentOrange::UserAgent.new request.env["HTTP_USER_AGENT"]
    @browser = ua.device.engine.browser.type.to_s.downcase
    @platform = ua.device.platform.to_s.downcase

    @instruction = Instruction.new.get_instructions(@browser, @platform)
  end
end
