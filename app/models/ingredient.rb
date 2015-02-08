class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: { in: 3..255 } 
  validates :quantity, :unit, presence: true
    unless: Proc.new{ |a| a.quantity = 'to taste' }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :unit, length: { in: 3..255 } 
end
