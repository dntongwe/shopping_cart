class CartsController < ApplicationController
  def show
  	@cart  = current_cart
  end

  def edit
    @cart = current_cart
  end

  def update
  	@cart = current_cart.update_attributes(cart_params)
  	if @card.save
  		redirect_to current_cart
  	else
  		render  'edit'
  	end
  end

end
