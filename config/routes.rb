Rails.application.routes.draw do

  #base
  get("/",{ :controller => "application", :action => "blank_square_form"})


  #square routes
  get("/square/new",{ :controller => "application", :action => "blank_square_form"})
  get("/square/results",{ :controller => "application", :action => "calculate_square"})

  
  #square root routes
  get("/square_root/new",{ :controller => "application", :action => "blank_square_root_form"})
  get("/square_root/results",{ :controller => "application", :action => "calculate_square_root"})

  #random routes
  get("/random/new",{ :controller => "application", :action => "blank_random_form"})
  get("/random/results",{ :controller => "application", :action => "calculate_random"})


  #payment routes
  get("/payment/new",{ :controller => "application", :action => "blank_payment_form"})
  get("/payment/results",{ :controller => "application", :action => "calculate_payment"}) 
end
