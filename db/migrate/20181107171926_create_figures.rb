class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|
      t.references :character, foreign_key: true
      t.references :series, foreign_key: true
      t.string :name
      t.string :figure_type
      t.string :manufacturer
      t.text :description
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end
