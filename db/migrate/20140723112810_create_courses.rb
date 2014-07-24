class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :teachers

      t.float :gpa, scale: 2

      t.float :As, scale: 2
      t.float :Bs, scale: 2
      t.float :Cs, scale: 2
      t.float :Ds, scale: 2
      t.float :Fs, scale: 2

      t.timestamps
    end
  end
end
