class ArticlesController < ApplicationController
  def index
    @articles = Article.all  
  end

  def fetch
    Article.fetch 
    redirect_to :root
  end
end
