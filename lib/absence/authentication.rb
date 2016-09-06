# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'hawk'
require 'json'
require_relative '../../lib/absence/configuration'

module Absence
  class Authenticate
    attr_reader :connect

    def self.connect
      @connect ||= value
    end

    def self.value
      puts 'Hello'
    end

    def self.build_header(_url)
      config = Hash(Absence::Configuration.load_configuration_from_file)
      config = config.merge!(absence_url(_url))
      Hawk::Client.build_authorization_header(
        config
      )
    end

    def self.absence_url(_url)
      url = _url || 'api/v2'
      json = {
        method: 'POST',
        request_uri: url,
        host: 'app.absence.io',
        port: 443
      }
      json
    end
  end
end
