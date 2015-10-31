class AddIdsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :helpscout_collection_id, :string
    add_column :articles, :helpscout_article_id, :string
  end
end
