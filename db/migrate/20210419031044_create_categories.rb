class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :code, comment: 'product code'
      t.string :name, null: false, comment: 'product name'
      t.timestamps
    end
  end
end
