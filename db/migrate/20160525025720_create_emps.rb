class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.references :company, index: true

      t.timestamps
    end
  end
end
