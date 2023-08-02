Rails.application.routes.draw do
  
  get("/", { :controller => "main", :action => "new_square_calc"})

  get("/square/new", { :controller => "main", :action => "new_square_calc"})

  get("/square/results", { :controller => "main", :action => "square_results"})

  get("/square_root/new", { :controller => "main", :action => "new_square_root"})

  get("/square_root/results", { :controller => "main", :action => "square_root_results"})

  get("/payment/new", {:controller => "main", :action => "new_payment"})

  get("/payment/results", {:controller => "main", :action => "payment_results"})

  get("/random/new", {:controller => "main", :action => "random"})

  get("/random/results", {:controller => "main", :action => "random_results"})


end
