class Student < ApplicationRecord
  has_many :teachers, through: :courses

  validates :name, presence :true, length: {minimum:3, maximum:15}
  validates :last_name, presence :true, length: {minimum:3, maximum:20}
  
end
