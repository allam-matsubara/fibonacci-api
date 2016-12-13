# This class is responsible for all the logic related to Fibonacci processing
# from validating if the quantity(or n) have a integer and positive value, to
# the recurrence that will evaluate the n firsts Fibonacci numbers. The result
# will be stored into the array @result, where the index i in the array, 
# correspond to the ith number on the sequence.
class Fib

  attr_reader :result

  # Initializing the class with the quantity and an array for the sequence.
  def initialize(quantity)
    @quantity = quantity
    @result = Array.new
  end

  # Populate takes no argument and has no return value. It just fill up the 
  # result array from 0 to n - 1 with sequence return values. It goes until 
  # n - 1 because we account 0 as the first Fibonacci number and if we count up
  # until n, we would have the n + 1 first numbers.
  def populate
    (0...@quantity).each do |i|
      @result[i] = sequence(i)
    end
  end

  private

  # Sequence takes n as argument and returns the n-th number of Fibonacci 
  # sequence. Since this recurrence is O(n^2), we used Dynamic Programming to
  # reduce the number of recurrent call using the already stored values.
  def sequence(n)
    return 0 if n == 0
    return 1 if n == 1

    first  = @result[n - 1] || sequence(n - 1)
    second = @result[n - 2] || sequence(n - 2)

    first + second
  end

end
