require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  @word = params.fetch('word')
  @list = params.fetch('list')
  @anagrams = @word.anagrams?(@list)
  erb(:anagrams)
end
