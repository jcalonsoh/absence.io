# Encoding: utf-8
#
# Author: Juan Carlos Alonso (<j.carlos.alonso.holmstron@outlook.cl>)

require 'yaml'
require 'erb'
require 'json'

module Absence
  class Configuration
    # attr_reader :configuration

    # def configuration
    #  @configuration ||= load_configuration
    # end

    def self.load_configuration_from_file
      if File.exist?(File.expand_path('.absence.yml'))
        config = YAML.load(ERB.new(File.read('.absence.yml')).result).to_json
        JSON.parse(config, symbolize_names: true)
      else
        puts 'There is no file .absence.yml '
      end
    end
  end
end
