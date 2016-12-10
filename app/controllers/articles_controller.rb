class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @articles = request.authorization ? Article.order('id DESC') : Article.published.order('id DESC')
    end

    def show
        return redirect_to articles_url if @article.draft && request.authorization.nil?
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article, notice: 'Article was successfully created.'
        else
            render :new
        end
    end

    def update
        if @article.update(article_params)
            redirect_to @article, notice: 'Article was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_url, notice: 'Article was successfully destroyed.'
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :content, :slug, :excerpt, :aside, :image, :description, :keywords, :category_id, :draft, :published_on)
    end
end
