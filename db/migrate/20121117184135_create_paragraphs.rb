class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :paragraphs, :post_id
  end
end
