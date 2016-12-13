# This class is responsible for all the logic related to Fibonacci processing
# from validating if the quantity(or n) have a integer and positive value, to
# the recurrence that will evaluate the n firsts Fibonacci numbers. The result
# will be stored into the array @result, where the index i in the array, 
# correspond to the ith number on the sequence.
class Fib

  # === Getters and setters ===
  attr_reader :result

  def initialize(quantity)
    @quantity = quantity
    @result = Array.new
  end


end
