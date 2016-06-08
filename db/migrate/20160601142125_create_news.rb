class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.string :header
    	t.string :body
    	t.attachment :avatar
    	t.references :organization

      t.timestamps null: false
    end
  end
end
