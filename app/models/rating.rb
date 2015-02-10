class Rating < ActiveRecord::Base
  validates :available?, presence: true, inclusion: { in: [true, false] }
  validates :total, numericality: { greater_than_or_equal_to: 0 }
  validates :out_of, numericality: { only_integer: true, greater_than: 0 }
  validates :unit, length: { in: 3..255 }
end
