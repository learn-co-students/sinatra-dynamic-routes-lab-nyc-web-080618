require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end


  get '/square/:number' do
    @number = params[:number].to_i #convert the params to integer first
    @result = @number * @number
    "#{@result}"
  end

  #accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    str = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do
      str << @phrase.to_s
    end
      str
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  #Create a dynamic route at get '/:operation/:number1/:number2'
  #that accepts an operation (add, subtract, multiply or divide)
  #and performs the operation on the two numbers provided.
  #For example, going to /add/1/2 should render 3
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      "#{number1+number2}"
    when "subtract"
      "#{number1-number2}"
    when "multiply"
      "#{number1*number2}"
    when "divide"
      "#{number1/number2}"
    end
  end

end
