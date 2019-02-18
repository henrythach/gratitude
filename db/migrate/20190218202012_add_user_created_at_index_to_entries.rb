class AddUserCreatedAtIndexToEntries < ActiveRecord::Migration[5.2]
  def change
    remove_index :entries, :user_id
    add_index :entries, [:user_id, :created_at], order: { user_id: :asc, created_at: :desc }
  end
end
