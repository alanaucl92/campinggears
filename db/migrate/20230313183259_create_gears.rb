class CreateGears < ActiveRecord::Migration[7.0]
  def change
    create_table :gears do |t|
      t.text :name
      t.text :brand
      t.text :category
      t.float :price
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
