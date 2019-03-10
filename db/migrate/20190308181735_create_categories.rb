class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :species, null: false
      t.timestamps
    end
  end
end
