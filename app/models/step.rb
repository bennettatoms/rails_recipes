class Step < ActiveRecord::Base
  serialize :thearray, Array
  validates :thearray, presence: true
end
