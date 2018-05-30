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

get "/cat" do
  "<div style='border: 3px dashed red'>
    <img src='http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png'>
  </div>"
end
