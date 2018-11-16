class CategoriesController < ApplicationController

  def index
    @categories = Category.joins(:product).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end

end
