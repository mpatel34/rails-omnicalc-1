class MainController < ApplicationController

  def new_square_calc

    render ({:template => "omnicalc/new_square_calc"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f 

    @the_result = @the_num ** 2 

    render ({:template => "omnicalc/square_results"})
  end

  def new_square_root
    render ({:template => "omnicalc/new_square_root_calc"})
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f

    @the_result = Math.sqrt(@the_num)
    render ({:template => "omnicalc/square_root_results"})
  end


  def new_payment
    render ({:template => "omnicalc/new_payment"})
  end

  def payment_results
    apr = params.fetch("user_apr").to_f.round(4)/100

    monthlyapr= apr/12

    @the_apr = (apr*100).round(4).to_s(:percentage)

    @the_years = params.fetch("user_years").to_i

    @the_principal = params.fetch("user_pv").to_f

    installments = (@the_principal*(monthlyapr)*(((1+monthlyapr)**(@the_years*12))/(((1+monthlyapr)**(@the_years*12))-1))).to_f

    @the_payment = installments.round(2).to_s(:currency)

    render ({:template => "omnicalc/payment_results"})
  end

  def random
    render ({:template => "omnicalc/random_new"})
  end

  def random_results
    @the_max = params.fetch("users_max").to_f

    @the_min = params.fetch("users_min").to_f
  
    @random_number = rand(@the_min..@the_max).to_f

    render ({:template => "omnicalc/random_results"})
  end


end
