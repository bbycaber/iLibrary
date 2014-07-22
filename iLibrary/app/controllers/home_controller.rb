class HomeController < ApplicationController

  def index

  		@books = []
	  	@magazines = []
	  	@articles = []

  	if params[:category] == 'All'

  		@books = Book.search(params[:search])
	  	@magazines = Magazine.search(params[:search])
	  	@articles = Article.search(params[:search])

	 elsif params[:category] == 'Books'
	  	@books = Book.search(params[:search])

	 elsif params[:category] == 'Magazines'
	 	@magazines = Magazine.search(params[:search])

	 elsif params[:category] == 'Articles'
	 	@articles = Article.search(params[:search])
	 else
	 	@books = Book.all
	  	@magazines = Magazine.all
	  	@articles = Article.all
	  	
  	end
  end

  def index2
		if user_signed_in?
			redirect_to :controller => 'todoo', :action => 'index'
		end
  end

end
