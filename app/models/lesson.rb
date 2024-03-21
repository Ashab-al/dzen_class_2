class Lesson < ApplicationRecord
  has_many :courses

  validates :title, presence :true, length: {minimum:5, maximum:250}
  validates :description, presence :true, length: {minimum:3, maximum:5000}
  validates :tasks, presence :true, length: {minimum:3, maximum:5000}
end
