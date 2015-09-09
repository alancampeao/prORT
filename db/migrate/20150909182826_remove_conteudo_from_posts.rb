class RemoveConteudoFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :conteudo, :text
  end
end
