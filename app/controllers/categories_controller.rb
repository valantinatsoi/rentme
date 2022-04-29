class CategoriesController < ApplicationController
  def index
    @categories = policy_scope(Category)
  end

  def show
    @category = Category.find(params[:id])
    authorize @category
    @listings = Listing.where(category: @category)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
