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

    i = 0
    until i = 3
      @text_block = @page.text_blocks.new(page_params[:text_blocks_attributes]["#{i}"])
      @text_block.save
      i += 1
    end

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

    i = 0
    until i = 3
      @text_block = @page.text_blocks["#{i}"]
      @text_block.update_attributes(page_params[:text_blocks_attributes]["#{i}"])
      i += 1
    end

		if @page.update_attributes(page_params)
			redirect_to pages_url
		else
			render :edit
		end
	end

	private

	  def page_params
	  	params.require(:page).permit(:title, :modules => [], :text_blocks_attributes => [:id, :header, :content, :_destroy])
	  end

end
