class AddTitleToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :title, :string, null: false
  end
end
