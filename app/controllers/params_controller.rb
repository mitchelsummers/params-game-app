class ParamsController < ApplicationController
  def name_enter
    input_value = params["your_name"]
    output_message = input_value.upcase
    render json: {message: output_message}
  end
  def guess_query
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number
      output_message = "guess lower"
    elsif input_guess < winning_number
      output_message = "guess higher"
    else
      output_message = "you win"
    end
    render json: {message: output_message}
  end  
#  def name_letter_first
 #   input_value = params["your_name"]
  #  if input_value.downcase.first == "a"
   #   render json: "hey your name starts with the first letter of the alphabet"
    #else
     # render json: "hey your name doesnt start with the first letter of the alphabet"
    #end
  #end
  def segment_params
    input_value = params["this_is_a_variable"]
    input_value2 = params["wildcard"]
    render json: {message: "the url segment is #{input_value} and #{input_value2}"}
  end
  def add_segment_params
    input_value = params["number_1"]
    input_value2 = params["number_2"]
    render json: {message: "the sum of the two numbers is #{input_value.to_i + input_value2.to_i}"}
  end
  def game_segment_params
    winning_number = 30
    input_value = params[:number_1]
    input_value2 = params[:number_2]
    guess = input_value.to_i + input_value2.to_i
    if guess > winning_number
      output_message = "guess lower"
    elsif guess < winning_number
      output_message = "guess higher"
    else
      output_message = "you win"
    end
    render json: {message: output_message}
  end
end
