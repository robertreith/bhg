class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @property = Property.find_by(id: params[:id])
  end

  def update
    @property = Property.find_by(id: params[:id])

    if @property.update(property_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    property = Property.find_by(id: params[:id])
    property.destroy

    redirect_to root_path
  end

  private
    def property_params
      params.require(:property).permit(:company, :neighborhood, :address, :phone)
    end

end
