class CheckoutsController < ApplicationController
  expose(:checkouts){ Checkout.all }
  expose(:checkout, attributes: :checkout_params)
  layout nil

  def create

    co = Checkout.new({rule: params[:data]['rule']})
    params[:data][:items].each do |item|
      co.scan(item)
    end
    co.total = co.running_total
    co.save

    flash[:notice] = "Checkout successful! :-)"
    render json: flash
  end

  private

  def checkout_params
    params.require(:checkout).permit(
      :total
    )
  end
end
