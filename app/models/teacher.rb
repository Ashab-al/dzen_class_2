class Teacher < ApplicationRecord
  has_many :courses
  has_many :students, through: :courses

  validates :name, presence :true, length: {minimum:3, maximum:15}
  validates :last_name, presence :true, length: {minimum:3, maximum:20}
end
