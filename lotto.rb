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

  if n > 0 and n < 50
  "#{[*1..49].sample(n)}"
  else
    "無法顯示"
  end
end

