class FibEndpointController < ApplicationController

  def receiver
    n = params[:quantity].to_i
   
    head :bad_request and return if n <= 0 || !n.is_a?(Fixnum)
    
    fib = Fib.new n
    fib.populate

    render json: fib.result
  end

end
