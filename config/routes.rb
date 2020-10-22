Rails.application.routes.draw do

  #square routes
  get("/square/new",{ :controller => "application", :action => "blank_square_form"})
  get("/square/results",{ :controller => "application", :action => "calculate_square"})

  
  #square root routes
  get("/square_root/new",{ :controller => "application", :action => "blank_square_root_form"})
  get("/square_root/results",{ :controller => "application", :action => "calculate_square_root"})

  #random routes
  get("/random/new",{ :controller => "application", :action => "blank_random_form"})
  get("/random/results",{ :controller => "application", :action => "calculate_random"})

end
