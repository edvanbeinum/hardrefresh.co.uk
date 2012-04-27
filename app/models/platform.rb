class Platform < ActiveRecord::Base
  has_many :instruction
  attr_accessible :name
end
