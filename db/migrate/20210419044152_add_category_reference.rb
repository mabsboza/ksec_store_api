class AddCategoryReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :categories, index: true
  end
end
