class CreateCostumes < ActiveRecord::Migration[5.1]
  def change
    create_table :costumes do |t|
      t.user :references
      t.string :name
      t.integer :price
      t.text :description
      t.string :size
      t.string :category
      t.string :image
      t.string :city
      t.boolean :availability

      t.timestamps
    end
  end
end
