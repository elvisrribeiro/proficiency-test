class CreateStudents < ActiveRecord::Migration

  def up
    create_table :students do |t|
      t.string "name", :limit => 45
      t.string "register_number", :limit => 45
      t.integer "status"
      
      t.timestamps
    end
  end

  def down
  	drop_table :students
  end

end
