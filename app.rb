require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get "/reversename/:name" do
  @user_name = params[:name]
  @user_name.reverse
end

get "/square/:number" do
  @squared = params[:number].to_i
  result = (@squared ** 2)
  result.to_s
end

get "/say/:number/:phrase" do
  string = ""
  @num = params[:number].to_i
  @words = params[:phrase]
    @num.times do
      string += @words
    end
  string
end


get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i

  if params[:operation] == "add"
    answer = @num1 + @num2
  elsif params[:operation] == "subtract"
    answer = @num1 - @num2
  elsif params[:operation] == "multiply"
    answer = @num1 * @num2
  elsif params[:operation] == "divide"
    answer = @num1 / @num2
  else
    answer = "Unable to perform this operation"
  end
  answer.to_s
end


end # end of App Class
