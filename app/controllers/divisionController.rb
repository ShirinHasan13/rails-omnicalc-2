class DivisionController < ApplicationController
  def divide_result
    render({ :template => "div_templates/division_form" })
  end

  def divide_these
    @first_num = params.fetch("first_num")
    @second_num = params.fetch("second_num").to_f

    @result =  @first_num / @second_num

    render({ :template => "div_templates/divide_result" })
  end
end
