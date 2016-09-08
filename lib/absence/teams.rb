# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'uri'
require 'net/http'
require 'json'
require_relative '../../lib/absence/authentication'
require_relative '../absence/libs/absence_request'

module Absence
  class Teams
    def self.list_of_teams
      Absence::Requester.new('teams').response.to_json
    end

    def self.print_list_of_teams
      JSON.pretty_generate(list_of_teams)
    end
  end
end
