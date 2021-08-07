class ArticlesController < ApplicationController
  before_action :find_article, except: [:new,:create]
    def index
    @articles = Article.all
    end
    def show
    @article = Article.find(params[:id])
    end
    def edit
    @article = Article.find(params[:id])
    
    end
    def delete

    @article.destroy
    redirect_to root_path

    end
    def update
    
    @article.update(title: params[:article][:title],content: params[:article][:content])
     render json: @article
    end
    def new
    end
    def create 
     @article = Article.create(title: params[:article][:title],content: params[:article][:content])
     render json: @article
    end

    def find_article
      @article = Article.find(params[:id])
    end
  end
  