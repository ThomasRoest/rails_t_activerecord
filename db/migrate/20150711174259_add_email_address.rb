class AddEmailAddress < ActiveRecord::Migration
  def change
    add_column :customers, :email, :string
  end
end
