class CreateProductsCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :products_categories do |t|
      t.references :product, null: false, index:true, foreign_key: true
      t.references :category, null: false, index: true, foreign_key:true

      t.timestamps
    end
  end
end
