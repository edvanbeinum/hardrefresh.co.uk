class Instruction < ActiveRecord::Base
  belongs_to :browser
  belongs_to :platform
  attr_accessible :browser_id, :platform_id, :content

  validates :content, presence: true

  def get_instructions(browser, platform)
    self.class.joins(:platform, :browser).where(platforms: {name: platform}, browsers: {name: browser}).first
  end
  
  def get_all_instructions
    self.class.joins(:platform, :browser)
  end
end
