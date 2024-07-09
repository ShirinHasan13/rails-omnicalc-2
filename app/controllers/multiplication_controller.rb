class MultiplicationController < ApplicationController
  def multiply_result
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result =  @first_num * @second_num

    render({ :template => "multiplication_templates/multiply_result" })
  end
end
