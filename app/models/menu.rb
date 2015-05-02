class Menu < ActiveRecord::Base
   attr_accessible :id, :food_id, :day_id
  
  belongs_to :food
  belongs_to :day
end
