class Car < ApplicationRecord
  validates :make, :car_model, :milage, :condition, presence: true
  
  belongs_to :user
end
