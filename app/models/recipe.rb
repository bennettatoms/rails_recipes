class Recipe < ActiveRecord::Base
  validates :name, :category, :difficulty, :image_file, :source, presence: true, 
            length: { in: 3..255 }
  validates :serves, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :comment, presence: true, length: { maximum: 500 }
end
