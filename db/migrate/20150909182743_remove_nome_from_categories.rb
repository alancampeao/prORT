class RemoveNomeFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :nome, :string
  end
end
