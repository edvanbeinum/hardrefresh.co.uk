class Instruction < ActiveRecord::Base
  belongs_to :browser
  belongs_to :platform
  attr_accessible :browser_id, :platform_id, :content

  validates :content, presence: true
end
