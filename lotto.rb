# 1 .. 49 取出 5 個不重複亂數

# (1..49).shuffle.first(5)
# (1..49).sample
# [*1..49] * = splat operator

require 'sinatra'

get '/lottery' do
  # 隨機在畫面上印出 (1 ~ 49) 5 個不重複數字
  "#{[*1..49].sample(5)}"
end

get '/lottery/:n' do
  # 隨機在畫面上印出 (1 ~ 49) n 個不重複數字
  # "#{[*1..49].sample(params[:n].to_i)}"
  # 當你透過網路傳輸，所有東西都是字串，沒有物件、沒有陣列，全部都是字串。 
  # 所有型態，在經過網路傳輸之後，全部都會變成字串。
  n = params[:n].to_i


  # 瞭解params 怎麼來的，在sinatra 什麼地方？

  puts params
  puts params.class #看一下params是什麼類別
  # 顯示結果
  # {"n"=>"80"} # 這邊是剛剛params自己帶的參數 80 本身。
  # Sinatra::IndifferentHash # 這是params後面的類別，從這邊來的。
  # 如果想知道這個類別被定義在那裡的話？用method這個方法的方法把他包起來，就是字面上的意思。
  puts method(:params).source_location # source_location 可以看到他被定義在那個檔案的第幾行？這樣可以追蹤的到。 
  # /Users/fengyue/.rvm/gems/ruby-2.7.2/gems/sinatra-2.1.0/lib/sinatra/base.rb
  # 916
  # 可以看到在base.rb 第916行。
  
  # 以上內容都在終端機上呈現出來的結果。
  
  if n > 0 and n < 50
  "#{[*1..49].sample(n)}"
  else
    "無法顯示"
  end
end


