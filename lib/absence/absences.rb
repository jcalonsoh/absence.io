# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'uri'
require 'net/http'
require 'json'
require_relative '../../lib/absence/libs/authentication'
require_relative '../absence/libs/absence_request'

module Absence
  class Absences
    def self.list_of_all
      Absence::Requester.new('absences').response.to_json
    end

    def self.print_list_of_all
      JSON.pretty_generate(list_of_all)
    end
  end
end
