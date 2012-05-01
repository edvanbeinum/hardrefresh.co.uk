class HomeController < ApplicationController
  def index
    ua = AgentOrange::UserAgent.new request.env["HTTP_USER_AGENT"]
    @browser = ua.device.engine.browser.type.to_s
    @platform = ua.device.platform.to_s

    @instruction = Instruction.new.get_instructions(@browser.downcase, @platform.downcase)
  end
end
