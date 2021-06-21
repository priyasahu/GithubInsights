class UserController < ApplicationController
  require 'octokit'
  require 'net/http'
  require 'json'
  def project
    url = 'https://api.github.com/users/priyasahu/repos'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    @result = result.map{|n| n["name"]}
  end


end
