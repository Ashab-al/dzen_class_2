class RemoveStudentFromCourses < ActiveRecord::Migration[7.1]
  def change
    remove_reference :courses, :student, index: true, foreign_key: true
  end
end
