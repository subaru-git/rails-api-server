module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        @article = Article.all
        render json: { status: true, articles: @article }
      end

      def create
        @article = Article.new(article_params)
        if @article.save
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
