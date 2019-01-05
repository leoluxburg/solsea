class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  def edit
      @article = Article.find(params[:id])
  end

  def update
      @article = Article.find(params[:id])
      @article.update(article_params)
      redirect_to root_path
  end

  def destroy
    @article = article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :short_desc, :description, :location,)
  end
end
