class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
    	t.string :ageintrval
    	t.references :city

      t.timestamps null: false
    end
  end
end
