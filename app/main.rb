require 'sinatra'

class Main < Sinatra::Application

  get '/' do
    "Hello World! <a href=\"/foo\">foo</a>"
  end
  
  get '/foo' do
    "<script>document.write('bizz');</script>"
  end

end
