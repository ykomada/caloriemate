class Food < ActiveRecord::Base
  attr_accessible :calories, :carbs, :fat, :name, :protien
end
