require 'sinatra'
set :session_secret, 'super secret'

get "/" do
  "hello"
end

get "/secret" do
  "this is a secret message"
end

get "/test" do
  "this prints without updating server"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/testing" do
  erb "Hi there <%=2 + 2%>"
end

get "/named-cat" do
  @name = params[:name]
  erb(:index)
end
