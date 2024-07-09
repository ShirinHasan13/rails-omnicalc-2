require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

Rails.application.routes.draw do

  get("/", { :controller => "addition", :action => "add_result" })

  get("/add", { :controller => "addition", :action => "add_result" })
  
  get("/add_result", { :controller => "addition", :action => "add_these" })

  get("/subtract", { :controller => "subtraction", :action => "sub_result" })
  get("/sub_result", { :controller => "subtraction", :action => "subtract_these" })

  get("/multiply", { :controller => "multiplication", :action => "multiplication" })
  get("/wizard_multiply", { :controller => "multiplication", :action => "multiply" })

  get("/divide", { :controller => "division", :action => "show_division_form" })
  get("/wizard_div", { :controller => "div", :action => "divide_these" })

end
