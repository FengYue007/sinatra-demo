# sinatra程式，帶點資料給它。
require 'sinatra'

get '/' do
  "歡迎來到貓的世界，有貓真好！"
end

get '/cats' do
  "黑貓白貓，會呼嚕的貓就是好貓！"
end

get '/cats/:id' do
  # 查資料庫....
  "你好，你是第 #{params[:id]} 號的貓!"
end
