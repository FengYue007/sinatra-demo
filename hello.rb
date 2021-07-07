require "sinatra" # 引用 sinatra 模組

get "/" do
  "Home!"
end

get "/hello" do
  "go to hello world"
end

get '/about.php' do
  "This is php"
end
