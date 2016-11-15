class AddProgressToKrs < ActiveRecord::Migration[5.0]
  def change
    add_column :krs, :progress, :integer
  end
end
