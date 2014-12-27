class ArticlesController < ApplicationController
   require 'redcarpet'

   layout "article"

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    specolid
  end

  def create
    @article = Article.new(article_params)
    specolid
    @article.content = Redcarpet.new(@article.content).to_html
    if @article.save
      redirect_to show_article_path(@article)
    else
      render 'new'
    end
  end

  private

    def article_params
      params.require(:article).permit(:title,:content,:user_id,
                :specol_id,:spepage_id)
    end

end
