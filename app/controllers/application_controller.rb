class ApplicationController < ActionController::Base


  #square page controls
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end 

  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end 


  #square root page controls
  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end 

  def calculate_square_root
    @user_num = params.fetch("user_number").to_f
    @square_root_of_user_num = @user_num ** 0.5
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end 


  #random number controls
  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end 

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end 


  #payment number controls
  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end 

  def calculate_payment
    @APR = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
    @r = @APR/12*0.01
    @n = @years*12
    @upper_chunk = @r*((1+@r)**@n)
    @bottom_chunk = ((1+@r)**@n)-1
    @payment = @principal * @upper_chunk/@bottom_chunk
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end 

end

