class CreateSateliteCampus < ActiveRecord::Migration
  def change
    create_table :satelite_campus do |t|
      t.integer :student_id
      t.integer :campus_id
      t.string :main_campus

      t.timestamps
    end
  end
end
