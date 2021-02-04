class Price < ActiveHash::Base

  self.data = [
    { id:1, name: "--"},
    { id:2, name: "0"},
    { id:3, name: "1000"},
    { id:4, name: "3500"},
    { id:5, name: "5000"},
    { id:6, name: "10,000"},
    { id:7, name: "30,000"},
    { id:8, name: "50,000"},
    { id:9, name: "100,000"},
    { id:10, name: "200,000"},
  ]

end
