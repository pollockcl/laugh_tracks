class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    comedians = Comedian.all

    erb :comedians, locals: { comedians: comedians }
  end
end
