class DataSourcesController < ApplicationController
  before_action :set_data_source, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:create, :edit, :update, :destroy]

  def index
    @data_sources = DataSource.all
  end

  def show
  end

  def new
    @data_source = DataSource.new
  end

  def edit
  end

  def create
    @data_source = DataSource.new(data_source_params)
    if @data_source.save
      redirect_to @data_source, notice: 'Data source was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @data_source.update(data_source_params)
      redirect_to @data_source, notice: 'Data source was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @data_source.destroy
    redirect_to data_sources_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_data_source
    @data_source = DataSource.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def data_source_params
    params.require(:data_source).permit(:name, :url)
  end
end
