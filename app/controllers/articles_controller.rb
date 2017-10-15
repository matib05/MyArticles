class ArticlesController < ApplicationController
	def index
		articles = Article.all
		render json: {status:'SUCCESS', message:'Loaded Articles', data:articles}, status: :ok
	end
	
	def show
		article = Article.find(params[:id])
		render json: {status:'SUCCESS', message:'Loaded Articles', data:article}, status: :ok
	end
end
