class ParamsController < ApplicationController
  def name_enter
    input_value = params["your_name"]
    render json: "your name is #{input_value.upcase}"
  end
  def name_letter_first
    input_value = params["your_name"]
    if input_value.downcase.first == "a"
      render json: "hey your name starts with the first letter of the alphabet"
    else
      render json: "hey your name doesnt start with the first letter of the alphabet"
    end
  end
end
