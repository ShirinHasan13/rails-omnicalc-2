class SubtractionController < ApplicationController
  def sub_result
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result =  @second_num - @first_num

    render({ :template => "subtraction_templates/sub_result" })
  end
end
