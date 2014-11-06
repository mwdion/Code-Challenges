class IceCreamFlavorsController < ApplicationController
  before_action :find_flavor, only: [:show, :edit, :update, :destroy]  
  def index
    @ice_cream_flavors = IceCreamFlavor.all
  end

  def show
  end

  def new
    @ice_cream_flavor = IceCreamFlavor.new
  end

  def create
    @ice_cream_flavor = IceCreamFlavor.create ice_cream_flavor_params
    if @ice_cream_flavor.save == true
    redirect_to ice_cream_flavors_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @ice_cream_flavor.update_attributes ice_cream_flavor_params
    redirect_to ice_cream_flavors_path(@ice_cream_flavor)
  end

  def destroy
    @ice_cream_flavor.delete
    redirect_to ice_cream_flavors_path(@ice_cream_flavor)
  end

   private
    def find_flavor
      @ice_cream_flavor = IceCreamFlavor.find params[:id]
    end

    def ice_cream_flavor_params
      params.require(:ice_cream_flavor).permit(:flavor)
    end
end
