class RemoveColumnsFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :img_1, :string
    remove_column :images, :img_2, :string
    remove_column :images, :img_3, :string
    remove_column :images, :img_4, :string
    remove_column :images, :img_5, :string
  end
end
