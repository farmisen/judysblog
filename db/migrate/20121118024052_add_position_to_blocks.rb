class AddPositionToBlocks < ActiveRecord::Migration
  def change
    add_column :blocks, :position, :int
  end
end
