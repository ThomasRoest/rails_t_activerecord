class AddAasmStateToAccountEntries < ActiveRecord::Migration
  def change
    add_column :account_entries, :aasm_state, :string
  end
end
