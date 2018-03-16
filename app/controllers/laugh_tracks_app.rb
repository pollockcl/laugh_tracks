class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    comedians = Comedian.with_specials
    average_age = Comedian.average_age

    erb :comedians, locals: { comedians: comedians, average_age: average_age }
  end
end
