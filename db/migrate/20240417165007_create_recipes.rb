class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description, null: true
      t.text :ingredients, null: true
      t.text :keywords, null: true
      t.string :url, null: true
      t.string :kind, null: false
      t.timestamps
    end
  end
end
