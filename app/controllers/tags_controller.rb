class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:create, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag, notice: 'Tag was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @tag.update(tag_params)
      redirect_to @tag, notice: 'Tag was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tag
    @tag = Tag.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tag_params
    params.require(:tag).permit(:title)
  end
end
