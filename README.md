# README

This application is a simple API, that receives a integer argument ```n``` via POST and
and generates the first ```n``` Fibonacci sequence numbers and returns them as a JSON.

## Usage

This API was written with Ruby 2.3.3 and Rails 5.0.0.1. The `.ruby-version` and `.ruby-gemset` for RVM
or rbenv usage are not included in the tree.

1. Clone this repository.
2. Go to the application folder that you just cloned.
3. `bundle install`
4. Launch the server of you preference. (Puma is used by default).

With the API up and running, you will only acces it sending a post request to a single URL: 
`<server_name>:<port>/fib_enpoint/receiver/<quantity>` where quantity is the amount of numbers
wanted from the Fibonacci sequence. The values accepted are only natural numbers without 0, any 
other values will generate an 400 HTTP code as response. If you're going to use it in another 
application, you should check the response codes by yourself.

A suggested use to test is this: `curl -X POST http://<server_name>:<:port>/fib_endpoint/receiver/<quantity>`
that will display an array with the desired ammount of numbers.

## Notes

Since the tradional recurrence used to calculate the n-th Fibonacci number, have the worst case
as **O(2^n)** we have to use **Dynamic Programming** to reduce the number of recurrent calls, since
we already have some of the values needed stored in our result array. In our approach the cost dropped
to almost a linear cost, since we have to iterate from first number to the `n - 1-th` number. We account
until `n - 1` because 0 is the first term, se if we go up to `n` we awould end up with the `n + 1` first 
numbers of Fibonacci.

There must be noted that we used a very thin version of rails with lots of things removed from it. So no
databases where needed, nor any kind of front-end tool, views, models, helpers and mailers were removed,
and lots of requirements also removed. So, in this scenario, a smaller framework, like SInatra, could have
been used for this small API. Most of the logic is dealled with PORO(Plain old ruby object) except by the `.blank?`
method that's provided by rails and it's used on `lib/classes/fib.rb`.
