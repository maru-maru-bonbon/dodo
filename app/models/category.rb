
class Category < ActiveHash::Base

  self.data = [
    { id:1, name: "--"},
    { id:2, name: "習慣化"},
    { id:3, name: "勉強"},
    { id:4, name: "睡眠"},
    { id:5, name: "早起き"},
    { id:6, name: "ダイエット"},
    { id:7, name: "筋トレ"},
    { id:8, name: "食事"},
    { id:9, name: "ランニング"},
    { id:10, name: "マインドフルネス"},
    { id:11, name: "初心者"},
    { id:12, name: "その他"},
  ]
  
end
