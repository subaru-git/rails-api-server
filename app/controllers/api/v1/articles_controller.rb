module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all
        params = []
        articles.each do |article|
          param = article.attributes
          tag = Tag.where(article_id: article.id)
          param["tag"] = tag
          like = Like.where(article_id: article.id)
          param["like"] = like
          params.push(param)
        end
        render json: { status: true, params: params }
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: { status: true }
        else
          render json: { status: false }
        end
      end

      private

        def article_params
          params.require(:article).permit(:content)
        end
    end
  end
end
