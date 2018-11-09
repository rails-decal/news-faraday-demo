
class HomeController < ApplicationController
  def index
      conn = Faraday.new
      url = 'https://newsapi.org/v2/top-headlines?country=in&apiKey=c01b15d58da54641b9d5cac87cb6338f'
      response = conn.get url
      @res = JSON.parse(response.body)

  end
end
