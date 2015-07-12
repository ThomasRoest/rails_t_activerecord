class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      # add the type field for single table inheritance
      t.string :name, :email, :about
      t.timestamps null: false
    end
  end
end
