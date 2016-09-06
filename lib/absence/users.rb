# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'uri'
require 'net/http'
require 'json'
require_relative '../../lib/absence/authentication'

module Absence
  class Users
    def self.list_of_users
      url = URI.parse('https://app.absence.io/api/v2/users')

      http = Net::HTTP.new(url.host, url.port)

      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Post.new(url)
      token = Absence::Authenticate.build_header(url.path)
      request['authorization'] = token
      request['cache-control'] = 'no-cache'
      request['content-type'] = 'application/json'

      response = http.request(request)
      response.read_body
    end

    def self.print_list_of_users
      puts JSON.pretty_generate(list_of_users.to_json)
    end
  end
end
