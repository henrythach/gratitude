class ChangeBodyNonNullableToEntries < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:entries, :body, false)
  end
end
