class AddIndexToTextBlockHeader < ActiveRecord::Migration
  def change
  	add_index :text_blocks, :header
  end
end
