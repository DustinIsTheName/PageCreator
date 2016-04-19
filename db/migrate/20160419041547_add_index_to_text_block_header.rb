class AddIndexToTextBlockHeader < ActiveRecord::Migration
  def change
  	add_index :text_blocks, :part_number
  end
end
