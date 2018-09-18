#trying this again
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    name = params[:name]
    breed = params[:breed]
    age = params[:age]

    @puppy = Puppy.new(name, breed, age)
    #redirect "new/#{puppy.name}"
    erb :display_puppy
  end

  # get '/new/:name' do
  #   new_puppy = Puppy.all.find do |puppy|
  #     puppy.name == name
  #   end

end
