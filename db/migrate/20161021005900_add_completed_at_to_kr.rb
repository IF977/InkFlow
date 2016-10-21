class AddCompletedAtToKr < ActiveRecord::Migration[5.0]
  def change
    add_column :krs, :completed_at, :datetime
  end
end
