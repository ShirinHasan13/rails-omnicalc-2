

Rails.application.routes.draw do

  get("/", { :controller => "addition", :action => "add_result" })

  get("/add", { :controller => "addition", :action => "add_result" })
  
  get("/add_result", { :controller => "addition", :action => "add_these" })

  get("/subtract", { :controller => "subtraction", :action => "sub_result" })
  get("/sub_result", { :controller => "subtraction", :action => "subtract_these" })

  get("/multiply", { :controller => "multiplication", :action => "multiply_result" })
  get("/multiply_result", { :controller => "multiplication", :action => "multiply_these" })

  get("/divide", { :controller => "division", :action => "divide_result" })
  get("/divide_result", { :controller => "division", :action => "divide_these" })

end
