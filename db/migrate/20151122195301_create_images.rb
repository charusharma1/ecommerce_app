class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :product_id
      t.string :img_1
      t.string :img_2
      t.string :img_3
      t.string :img_4
      t.string :img_5

      t.timestamps null: false
    end
  end
end
