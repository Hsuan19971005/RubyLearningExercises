#  編號：CANDY-009
# 程式語言：Ruby
# 題目：移除網址中的錨點（Anchor）
def removeAnchor(url) 
  url.split("#").first  
end

p removeAnchor("5xruby.tw") # 印出 5xruby.tw
p removeAnchor("5xruby.tw/#about") # 印出 5xruby.tw/
p removeAnchor("5xruby.tw/courses/?page=1#about") # 印出 5xruby.tw/courses/?page=1
