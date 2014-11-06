class SodaFlavorsController < ApplicationController
  before_action :find_flavor, only: [:show, :edit, :update, :destroy]  
  def index
    @soda_flavors = SodaFlavor.all
  end

  def show
  end

  def new
    @soda_flavor = SodaFlavor.new
  end

  def create
    @soda_flavor = SodaFlavor.create soda_flavor_params
    if @soda_flavor.save == true
    redirect_to soda_flavors_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @soda_flavor.update_attributes soda_flavor_params
    redirect_to soda_flavors_path(@soda_flavor)
  end

  def destroy
    @soda_flavor.delete
    redirect_to soda_flavors_path(@soda_flavor)
  end

   private
    def find_flavor
      @soda_flavor = SodaFlavor.find params[:id]
    end

    def soda_flavor_params
      params.require(:soda_flavor).permit(:soda)
    end
end
