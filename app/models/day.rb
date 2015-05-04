class Day < ActiveRecord::Base
   attr_accessible :id, :total_calories, :total_protien, 
   :total_carbs, :total_fat
   
  has_many :menus

  accepts_nested_attributes_for :menus
  
  has_many :foods, through: :menus

  def total_calories
  	day = self
  	total_calories = day.foods.sum(:calories)
  end

  def total_protien
  	day = self
  	total_protien = day.foods.sum(:protien)
  end

  def total_carbs
  	day = self
  	total_carbs = day.foods.sum(:carbs)
  end

  def total_fat
  	day = self
  	total_carbs = day.foods.sum(:fat)
  end

end
