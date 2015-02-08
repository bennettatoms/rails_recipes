class CookingTime < ActiveRecord::Base
  validates :total, presence: true, only_integer: true, 
            numericality: { greater_than: 0 }
  validates :prep, :cook, :inactive, presence: true, only_integer:true, 
            numericality: { greater_than_or_equal_to: 0 }          
end
