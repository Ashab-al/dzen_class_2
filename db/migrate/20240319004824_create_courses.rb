class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
