class CheckoutsController < ApplicationController
  expose(:checkouts){ Checkout.all }
  expose(:checkout, attributes: :checkout_params)
  layout nil

  def create

    co = Checkout.new(pricing_rules)
    params[:data][:items].each do |item|
      co.scan(item)
    end
    debugger

    redirect_to products_path
  end

  private

  def pricing_rules
    pricing_rule = { rule: 'bogo' }
    #pricing_rule = { rule: 'bulk' }
    pricing_rule
  end

  def checkout_params
    params.require(:checkout).permit(
      :total
    )
  end
end
