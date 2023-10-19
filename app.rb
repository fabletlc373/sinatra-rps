require "sinatra"
require "sinatra/reloader"

outcomes = ['rock', 'paper', 'scissors']
get("/") do
  erb(:homepage)
end

get("/rock") do
  otherhand = outcomes.sample(1)[0]
  @msg0 = "We played rock!"
  @msg1 = "They played #{otherhand}!"
  if otherhand=='scissors'
    @msg2 = "We won!"
  elsif otherhand=='rock'
    @msg2 = "We tied!"
  else
    @msg2 = "We lost!"
  end
  erb(:results)
end

get("/paper") do
  @msg0 = "We played paper!"
  otherhand = outcomes.sample(1)[0]
  @msg1 = "They played #{otherhand}!"
  if otherhand=='rock'
    @msg2 = "We won!"
  elsif otherhand=='paper'
    @msg2 = "We tied!"
  else
    @msg2 = "We lost!"
  end
  erb(:results)
end

get("/scissors") do
  @msg0 = "We played scissors!"
  otherhand = outcomes.sample(1)[0]
  @msg1 = "They played #{otherhand}!"
  if otherhand=='paper'
    @msg2 = "We won!"
  elsif otherhand=='scissors'
    @msg2 = "We tied!"
  else
    @msg2 = "We lost!"
  end
  erb(:results)
end
