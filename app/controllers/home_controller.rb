require 'faraday'
require 'json'
 class HomeController < ApplicationController
  def index
<<<<<<< HEAD
      conn = Faraday.new
      url = 'https://newsapi.org/v2/top-headlines?country=in&apiKey=c01b15d58da54641b9d5cac87cb6338f'
      response = conn.get url
      @res = JSON.parse(response.body)

=======
      url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=07dd58431dec48ec8c1947d6f1046730'
      conn = Faraday.new
      res = conn.get url
      @response = JSON.parse(res.body)
>>>>>>> completed
  end
end
