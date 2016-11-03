class RemoveTabelaKrs < ActiveRecord::Migration[5.0]
  def change
  	drop_table :krs
  end
end
