class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name,         null: false
      t.text :description,    null: false
      t.string :item
      t.integer :category_id, null: false
      t.integer :term_id,     null: false
      t.integer :price_id,    null: false
      t.references :user,             foreign_key: true


      t.timestamps
    end
  end
end
