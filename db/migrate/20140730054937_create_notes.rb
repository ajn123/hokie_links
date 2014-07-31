class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.integer :course_id, index: true

      t.timestamps
    end
  end
end
