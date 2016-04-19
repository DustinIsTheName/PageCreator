class CreateTextBlocks < ActiveRecord::Migration
  def change
    create_table :text_blocks do |t|
    	t.string :header
    	t.text :content
    	t.integer :page_id

      t.timestamps null: false
    end
  end
end
