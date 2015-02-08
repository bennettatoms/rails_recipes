class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: { in: 3..255 } 
  validates :quantity, :unit, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
    unless: Proc.new { |a| a.quantity = 'to taste' }
  validates :unit, length: { in: 3..255 } 
end
