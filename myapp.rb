require 'rubygems'
require 'sinatra'

before do
  cert=request.env["javax.servlet.request.X509Certificate"][0]
  user=cert.getSubjectDN().getName()
  params[:user_name] = user
  puts user
end 

get '/' do
  "hello #{params[:user_name]}"
end

get '/user' do
  "hello #{params[:user_name]}"
end
