class HomeController < ApplicationController
  def index
    ua = UserAgent.parse(request.env["HTTP_USER_AGENT"])
    logger.info request.env["HTTP_USER_AGENT"]
    logger.info ua.browser
    @browser = ua.browser.to_s
    @platform = ua.platform.to_s

    @instruction = Instruction.new.get_instructions(@browser.downcase, @platform.downcase)
    @all_instructions = Instruction.new.get_all_instructions
  end
end
