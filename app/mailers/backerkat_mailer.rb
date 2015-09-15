class BackerkatMailer < ApplicationMailer
  def new_article(backerkat, article)
    @article = article
    mail(to: backerkat.email, subject:"Docs Roulette: #{@article.name}")
  end
end
