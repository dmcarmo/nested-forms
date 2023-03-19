class OfficesController < ApplicationController
  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
  end

  def new
    @office = Office.new
    @office.office_facilities.build
  end

  def create
    # Check "One-to-many section" on  https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html
    # my params should be like this
    # params = { office: {name: "Colombo", facilities_attributes: [
    #     {facility_id: 1},
    #     {facility_id: 10}
    #  ]
    # }}
    
    @office = Office.new(office_params)
    raise
    if @office.save!
      redirect_to offices_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def office_params
    params.require(:office).permit(:name, office_facilities_attributes: [:_destroy, :facility_id, :quantity])
  end
end
