require('sinatra')
require('sinatra/contrib/all') if development?()

require_relative('./models/film')
also_reload('./models/*')

get '/films' do
    @films = Film.all()
    erb(:index)
end

get '/Ghost' do
    @films = Film.all()
    erb(:film1)
end

get '/The Sixth Sense' do
    @films = Film.all()
    erb(:film2)
end

get '/Beetlejuice' do
    @films = Film.all()
    erb(:film3)
end

get '/Casper' do
    @films = Film.all()
    erb(:film4)
end