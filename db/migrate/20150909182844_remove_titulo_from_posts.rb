class RemoveTituloFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :titulo, :string
  end
end
