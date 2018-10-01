class ArticleController < ApplicationController
  def index
    render json: {content: "content from api server."}
  end
  def new
    @article = Article.new(article_params)
    if @article.save
      render json: {status: true}
    else
      render json: {status: false}
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:content)
    end

end
