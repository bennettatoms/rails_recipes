class Rating < ActiveRecord::Base
  validates :total, :out_of, :unit, presence: true
    unless: Proc.new { |a| a.total = 'no rating available' }
  validates :total, numericality: { greater_than_or_equal_to: 0 }
  validates :out_of, only_integer: true, numericality: { greater_than: 0 }    
  validates :unit, length: { in: 3..255 }
end