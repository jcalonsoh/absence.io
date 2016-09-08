# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'uri'
require 'net/http'
require 'json'

module Absence
  class Requester
    attr_reader :path, :url, :response

    def initialize(path)
      # url = _url || 'https://app.absence.io'
      url = 'https://app.absence.io/api/v2'
      @response ||= get_response(url, path)
    end

    def get_response(url, path)
      url = URI.parse("#{url}/#{path}")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(url)
      token = Absence::Authenticate.build_header(url.path)
      request['authorization'] = token
      request['cache-control'] = 'no-cache'
      request['content-type'] = 'application/json'
      http.request(request).read_body
    end
  end
end
