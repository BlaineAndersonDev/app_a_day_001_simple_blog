class ArticlesController < ApplicationController
  def new
    #`@article` is an instance variable which can be pased to the view.
    @article = Article.new
  end
end
