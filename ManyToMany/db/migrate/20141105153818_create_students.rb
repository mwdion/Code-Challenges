class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fist_name
      t.string :last_name

      t.timestamps
    end
  end
end
