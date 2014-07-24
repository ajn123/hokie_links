class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :description
      t.integer :course_id, index: true

      t.timestamps
    end
  end
end
