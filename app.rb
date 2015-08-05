require('sinatra')
require('sinatra/reloader')


get('/')
  erb(:index)
end
