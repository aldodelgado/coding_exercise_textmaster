class ProductsController < ApplicationController
  expose(:products){ Product.all}
  expose(:product, attributes: :product_params)

  private

  def product_params
    params.require(:product).permit(
      :code,
      :name,
      :price
    )
  end
end
