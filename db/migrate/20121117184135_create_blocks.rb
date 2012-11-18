class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :blocks, :post_id
  end
end
