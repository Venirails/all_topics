class AddChangesToTables < ActiveRecord::Migration
  def change
	  add_column :employees,:email,:string
	  remove_timestamps :books
  end
end
