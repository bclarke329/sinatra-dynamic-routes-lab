require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get '/square/:number' do 
    # binding.pry
    @sqnum = params[:number].to_i
    "#{@sqnum ** 2}.to_s"
  end 

  get '/say/:number/:phrase' do 
    response = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      response += @phrase
    end 
    response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    # binding.pry
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # @operation = params[:operation]
    case params[:operation ]
    when 'add'
      answr = (@num1 + @num2).to_s
    when 'subtract'
      answr = (@num1 - @num2).to_s
    when 'multiply'
       answr = (@num1 * @num2).to_s
    when 'divide'
      answr = (@num1 / @num2).to_s
    end 
  end 

end