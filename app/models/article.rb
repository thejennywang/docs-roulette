class Article < ActiveRecord::Base

  def self.fetch
    HelpscoutArticleFetcher.new.articles.each do |a|
      Article.where(url: a['publicUrl'], helpscout_collection_id: a['collectionId'], helpscout_article_id: a['id']).first_or_create(name: a['name'])
    end
  end
end
