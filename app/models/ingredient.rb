class Ingredient < ActiveRecord::Base
  has_many :proportions
  has_many :cocktails, through: :proportions
end
