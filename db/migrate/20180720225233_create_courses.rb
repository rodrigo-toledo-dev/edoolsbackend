class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :school, foreign_key: true
      t.string :name
      t.string :title
      t.text :description
      t.text :content
      t.integer :duration
      t.integer :students
      t.float :value

      t.timestamps
    end
  end
end
