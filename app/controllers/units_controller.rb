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

  def edit
    @unit = Unit.find_by(id: params[:id])
  end

  def update
    @unit = Unit.find_by(id: params[:id])

    if @unit.update(unit_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    unit = Unit.find_by(id: params[:id])
    unit.destroy

    redirect_to root_path
  end

  private
    def unit_params
      params.require(:unit).permit(:num_of_units, :property_id, :percentage_id)
    end
end
