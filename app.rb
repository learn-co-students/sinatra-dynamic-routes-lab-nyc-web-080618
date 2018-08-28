require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
  end
  get '/square/:number' do
    number = params[:number].to_i
    final_number = number**2
    final_number.to_s
  end

  get '/say/:number/:phrase' do
    string = ''
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do
      string = string + phrase
    end
    return string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    final_string = ''
    word1 = params[:word1].to_s
    final_string = final_string + word1 + " "
    word2 = params[:word2].to_s
    final_string = final_string + word2 + " "
    word3 = params[:word3].to_s
    final_string = final_string + word3 + " "
    word4 = params[:word4].to_s
    final_string = final_string + word4 + " "
    word5 = params[:word5].to_s
    final_string = final_string + word5 + "."
  end

  get '/:operation/:number1/:number2' do
    final_number = 0
    operation = params[:operation].to_s
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      final_number = number1 + number2
      return final_number.to_s
    elsif operation == 'subtract'
      final_number = number1 - number2
      return final_number.to_s
    elsif operation == 'multiply'
      final_number = number1 * number2
      return final_number.to_s
    elsif operation == 'divide'
      final_number = number1 / number2
      return final_number.to_s
    end

  end



end
