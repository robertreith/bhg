class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
    @properties = Property.all
  end

  def create
    @unit = Unit.new(unit_params)
    @properties = Property.all
    if @unit.save
      redirect_to properties_path
    else
      render 'new'
    end
  end

  private
    def unit_params
      params.require(:unit).permit(:num_of_units, :property_id, :percentage_id)
    end
end
