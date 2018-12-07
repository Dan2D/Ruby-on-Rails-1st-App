class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
	@articles = Article.all
  end

  def new  
	@article = Article.new
  end  

  def create
	@article = Article.new(article_params)
	@article.save

	flash.notice = "Article '#{@article.title}' has been Created!"

	redirect_to article_path(@article)
  end

  def edit
	@article = Article.find(params[:id])
  end

#You're selecting the correct article useing id and updating its params as defined by article_params which would be title and body
  def update
	@article = Article.find(params[:id])
	@article.update(article_params)

	flash.notice = "Article '#{@article.title}' has been Updated!"

	redirect_to article_path(@article)
  end

  def show
	@article = Article.find(params[:id])
	@comment = Comment.new
	@comment.article_id = @article.id
  end

  def destroy
	@article = Article.find(params[:id])
	@article.destroy

	flash.notice = "Article '#{@article.title}' has been Deleted!"

	redirect_to articles_path
  end

end
