class BackerkatMailer < ApplicationMailer
  def new_article(backerkat, article)
    @article = article
    mail(to: backerkat.email, subject:"New Article #{@article.name}")
  end
end
