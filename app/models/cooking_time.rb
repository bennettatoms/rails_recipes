class CookingTime < ActiveRecord::Base
  validates :total, presence: true, numericality: { only_integer: true, 
            greater_than: 0 }
  validates :prep, :cook, :inactive, presence: true, numericality: 
            { only_integer:true, greater_than_or_equal_to: 0 }          
end
