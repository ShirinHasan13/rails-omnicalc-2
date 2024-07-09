class AdditionController < ApplicationController
  def add_result
    render({ :template => "addition_templates/addition_form" })
  end

  def add_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result = @first_num + @second_num

    render({ :template => "addition_templates/add_result" })
  end
end
