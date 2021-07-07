require "sinatra" # 引用 sinatra 模組

get "/" do
  "Home!"
  # "你好，世界，現在是 #{Time.now}"
end

get "/hello" do
  "go to hello world"
end

get '/about.php' do
  "This is php"
end
