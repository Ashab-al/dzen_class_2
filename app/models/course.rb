class Course < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :lesson

  validates :title, presence :true, length: {minimum:5, maximum:250}
  validates :description, presence :true, length: {minimum:3, maximum:5000}
end
