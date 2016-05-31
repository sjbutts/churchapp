class DirectoriesController < ApplicationController
	before_action :set_directory, only: [:show, :update, :destroy]
  def new
  	@directory = Directory.new
  end

  def edit

  end

  def show
  end

  def index
  	@directory = Directory.new
  	@directories = Directory.all		
  end

  def create
  	@directory  = Directory.new(directory_params)
  		respond_to do |format|
  			if @directory.save
  				format.html {redirect_to root_url, notice: "This member has been created successfully"}
  			else
  				format.html {render :new}
  			end
  		end
  end

  def update
 		respond_to do |format|
 			if @directory.update(directory_params)
  				format.html {redirect_to @directory, notice: "This member has been updated successfully"}
  			else
  				format.html {render :edit}
  			end
  		end
  	end
  

  def destroy
  	@directory.destroy
  		respond_to do |format| 
  			format.html {redirect_to directories_url, notice: "This member was deleted succesfully."} 
  		end
  end

private

  def directory_params
	params.require(:directory).permit(:name, :address, :phone, :alt_phone, :email, :h2h_group)
	
  end

  def set_directory
  	@directory = Directory.find(params[:id])
  end
 end

