class AddPositionToParagraph < ActiveRecord::Migration
  def change
    add_column :paragraphs, :position, :int
  end
end
