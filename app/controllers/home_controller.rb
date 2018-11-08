require 'faraday'
require 'json'

class HomeController < ApplicationController
  def index
      url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=07dd58431dec48ec8c1947d6f1046730'
      conn = Faraday.new
      res = conn.get url
      @response = JSON.parse(res.body)
  end
end
