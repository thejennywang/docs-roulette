class EmailBlastsController < ApplicationController
  
  def create
    all_articles = Article.all

    Backerkat.all.each do |b|
      BackerkatMailer.new_article(b, all_articles.sample).deliver_now
    end

    redirect_to root_url, notice: "Blast Sent!"
  end
end