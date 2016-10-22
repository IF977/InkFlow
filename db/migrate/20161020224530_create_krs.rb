class CreateKrs < ActiveRecord::Migration[5.0]
  def change
    create_table :krs do |t|
      
      t.string :content
      t.references :okr, foreign_key: true

      t.timestamps
    end
  end
end
 