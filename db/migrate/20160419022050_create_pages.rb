class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
    	t.string :title
    	t.text :modules

      t.timestamps null: false
    end
  end
end
