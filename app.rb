require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  @delivery_option = params.fetch("delivery_option")

  parcel = Parcel.new(@length.to_i, @width.to_i, @height.to_i, @weight.to_i, @delivery_option)

  @string_to_display = parcel.cost_to_ship
  erb(:output)
end
