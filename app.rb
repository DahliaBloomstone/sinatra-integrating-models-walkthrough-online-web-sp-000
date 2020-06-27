require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base

#get '/' do, which renders the index.erb page.
  get '/' do
    erb :index
  end

#post '/' do, which receives the form data through params and renders the results page.
  post '/' do
    text_from_user = params[:user_text]
    erb :results
  end

end
