class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string :eventname
		t.text :description
		t.string :date
		t.integer :price
		t.string :place
		t.integer :like
    t.references :category
    t.references :city
    t.references :age
      t.timestamps null: false
    end
  end
end
