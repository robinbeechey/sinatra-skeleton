# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  #why does this work and how does the value stay?
  @message = Message.new
  erb :'messages/new'
end
#why does order matter
post '/messages' do
  @message = Message.new(
    url: params[:url],
    content: params[:content],
    author: params[:author]
    )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end
#^ why is it redirecting upon failure on (url bar)
get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end



