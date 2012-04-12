class Platform < ActiveRecord::Base
  has_one :instruction
  attr_accessible :name
end
