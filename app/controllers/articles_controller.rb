class ArticlesController < ApplicationController
  def index
    @articles = Article.all  
  end

  def fetch
    Article.fetch 
    redirect_to articles_path
  end
end
