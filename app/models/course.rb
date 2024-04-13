class Course < ApplicationRecord
  has_many :lessons
  belongs_to :teacher

  validates :title, presence :true, length: {minimum:5, maximum:250}
  validates :description, presence :true, length: {minimum:3, maximum:5000}
end
