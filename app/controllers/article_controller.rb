class ArticleController < ApplicationController
  def index
    render json: {content: "content from api server."}
  end
end
