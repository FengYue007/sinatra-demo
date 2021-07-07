# sinatra-demo

## 練習Ruby Sinatra 程式

1. 第一步安裝 sinatra
> 在終端機下指令 `gem install sinatra`
+ 安裝過程中出現以下字樣`Successfully installed sinatra-2.1.0f`
+ 可以按`Control + c`　結束安裝.
+ 因為剩下的都是安裝sinatra說明文件，可以等待到sinatra gem套件安裝完成。

2. 先建一個hello.rb並寫入程式

3. 終端機執行`ruby hello.rb`  

4. 輸入網址`http://127.0.0.1:4567/`，即可看到剛剛在hello.rb，寫入的程式結果。

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

```ruby
get "/about.php" do
  'This is php'
end
```
