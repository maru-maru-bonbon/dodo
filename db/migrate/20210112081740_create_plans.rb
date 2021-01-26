class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.integer :plan_price
      t.string :item
      t.string :member
      t.integer :term

      t.timestamps
    end
  end
end
