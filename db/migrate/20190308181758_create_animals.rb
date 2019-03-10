class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :breed
      t.string :sex, null: false
      t.text :description
      t.integer :fee
      t.integer :weight
      t.string :color
      t.boolean :adopted, default: false
      t.references :category, index: true, foreign_key: true
      t.references :facility, index: true, foreign_key: true
      t.timestamps
    end
  end
end
