class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name,      null: false
      t.text :description, null: false
      t.string :item
      t.integer :category, null: false
      t.integer :term,     null: false
      t.integer :price,    null: false

      t.timestamps
    end
  end
end
