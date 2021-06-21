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

    commit_url = "https://api.github.com/repos/priyasahu/action_cable_chat_app/commits"
    resp = RestClient.get(commit_url, headers={accept: 'application/vnd.github.v3+json'})
    result = JSON.parse(resp)
    @commits = result.map{|n| n["commit"]["message"]}
  end


end
