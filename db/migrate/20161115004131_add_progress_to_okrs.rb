class AddProgressToOkrs < ActiveRecord::Migration[5.0]
  def change
    add_column :okrs, :progress, :integer
  end
end
