class ApplicationController < ActionController::Base
before_action :current_cart

private

def current_cart
  @current_cart ||= Cart.first || Cart.create!
end


end
