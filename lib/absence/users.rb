# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'uri'
require 'net/http'
require 'json'
require_relative '../../lib/absence/libs/authentication'
require_relative '../absence/libs/absence_request'

module Absence
  class Users
    def self.list_of_users
      Absence::Requester.new('users').response.to_json
    end

    def self.print_list_of_users
      JSON.pretty_generate(list_of_users)
    end
  end
end
