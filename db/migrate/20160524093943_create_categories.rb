class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :catname
    	t.references :city
      t.timestamps null: false
    end
  end
end
