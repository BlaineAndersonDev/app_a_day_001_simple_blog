class ArticlesController < ApplicationController
  
  #The `home` page for the Articles Controller which usually shows all available Articles.
  def index 
    @articles = Article.all
  end

  #Provide `@article`(Instance Variable) to `new.html.erb`.
  def new 
    @article = Article.new
  end

  #Insert Article provided via console or `new.html.erb` into the database.
  def create 
    #Creates `@article`(Instance Variable) with provided information.
    #Requires all params as stated in the private method `article_params`.
    @article = Article.new(article_params)

    # If `@article` is saved into the database redirect to view `show.html.erb`.
    @article.save
    redirect_to @article
  end

  #Find specific Article via id and display information with `show.html.erb`.
  def show
    @article = Article.find(params[:id])
  end

  #_______
  def edit
    @article = Article.find(params[:id])
  end

  #_______
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  #_______
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # The `private` method is not accessible outside of the controller and allows us to create `strong params` like this one:
  #private methods are not accessible outside of the controller.
  private
    #Create reusable `strong params`.
    def article_params 
      #params.require(:MODEL).permit(:WHITELISTED_MODEL_ATTRIBUTES)
      params.require(:article).permit(:title, :author, :text)
    end

end
