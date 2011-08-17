require 'sinatra'

class Main < Sinatra::Application

  get '/' do
    "Hello World!"
  end

end
