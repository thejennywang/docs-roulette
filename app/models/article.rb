class Article < ActiveRecord::Base

  def self.fetch
    HelpscoutArticleFetcher.new.articles.each do |a|
      Article.where(url: a['publicUrl']).first_or_create(name: a['name'])
    end
  end
end
