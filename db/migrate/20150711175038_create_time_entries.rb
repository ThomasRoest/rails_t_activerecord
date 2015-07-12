class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.float :time
      t.references :customer
      t.references :employee
      #this will create the employee id integer field 
      t.timestamps null: false
    end
  end
end
