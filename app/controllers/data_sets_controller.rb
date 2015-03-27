class DataSetsController < ApplicationController
  before_action :set_data_set, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:create, :edit, :update, :destroy]

  def index
    @data_sets = DataSet.all
  end

  def show
  end

  def new
    @data_set = DataSet.new
  end

  def edit
  end

  def create
    @data_set = DataSet.new(data_set_params)

    if @data_set.save
      redirect_to @data_set, notice: 'Data set was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
     if @data_set.update_attributes(data_set_params)
       redirect_to @data_set, notice: "Data set has been updated."
     else
       render "edit"
     end
  end

  def destroy
    @data_set.destroy
    redirect_to data_sets_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_data_set
    @data_set = DataSet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def data_set_params
    params.require(:data_set).permit(:title, :description, :data_source, :date_published, :collection_date_range, :geographic_detail)
  end
end
