class CreateCostumes < ActiveRecord::Migration[5.1]
  def change
    create_table :costumes do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description
      t.string :size
      t.string :category
      t.string :image
      t.string :city
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
