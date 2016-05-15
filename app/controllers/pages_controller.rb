class PagesController < ApplicationController
	def index
		@pages = Page.all
	end

	def show
		@page = Page.find(params[:id])
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)

		if @page.save
			redirect_to pages_url
		else
			render :new
		end
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])

		if @page.update_attributes(page_params)
			redirect_to pages_url
		else
			render :edit
		end
	end

	private

	  def page_params
	  	params.require(:page).permit(:title, :modules => [])
	  end
end
