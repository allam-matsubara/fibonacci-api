Rails.application.routes.draw do
  post 'fib_endpoint/receiver/:quantity', to: "fib_endpoint#receiver"
end
