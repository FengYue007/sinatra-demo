# sinatra-demo

## 練習Ruby Sinatra 程式

1. 第一步安裝 sinatra
> 在終端機下指令 `gem install sinatra`
+ 安裝過程中出現以下字樣`Successfully installed sinatra-2.1.0f`
+ 可以按`Control + c`　結束安裝.
+ 因為剩下的都是安裝sinatra說明文件，可以等待到sinatra gem套件安裝完成。

### 建立第一個sinatra程式

1. 先建一個hello.rb並寫入程式

2. 終端機執行`ruby hello.rb`  

3. 輸入網址`http://127.0.0.1:4567/`，即可看到剛剛在hello.rb，寫入的程式結果。

在網址 http://127.0.0.1:4567 會顯示`Home!`

```ruby
get "/" do
  "Home!"
end
```

在網址 http://127.0.0.1:4567/hello 會顯示`go to hello world!`

```ruby
get "/hello" do
  "go to hello world"
end
```


在網址 http://127.0.0.1:4567/about.php 會顯示`This is php`
> 不一定php檔案　但可以假裝自己是PHP網站！

```ruby
get "/about.php" do
  'This is php'
end
```

### 建立第二個sinatra程式

1. 先建一個hello1.rb並寫入程式

2. 終端機執行`ruby hello.rb`  

3. 輸入網址`http://127.0.0.1:4567/`，即可看到剛剛在hello.rb，寫入的程式結果。

在網址 http://127.0.0.1:4567 會顯示`歡迎來到貓的世界，有貓真好！`

```ruby
get '/' do
  "歡迎來到貓的世界，有貓真好！"
end
```

在網址 http://127.0.0.1:4567/cats 會顯示`黑貓白貓，會呼嚕的貓就是好貓！`

```ruby
get '/cats' do
  "黑貓白貓，會呼嚕的貓就是好貓！"
end
```


在網址 http://127.0.0.1:4567/:id 會顯示`你好，你是第 #{params[:id]} 號的貓!`
> `:id`，會隨你輸入的值而改變。
＞ 如輸入１，則是１號的貓。

```ruby
get '/cats/:id' do
  "你好，你是第 #{params[:id]} 號的貓!"
end
```



