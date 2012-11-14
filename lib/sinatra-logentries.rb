require 'sinatra-logentries/version'
require 'sinatra/base'
require 'le'

def logger
  Sinatra::Logentries.logger
end

module Sinatra
  module Logentries

    @@logger = nil
    @@token = ''

    module Helpers
      def logger
        Sinatra::Logentries.logger
      end
    end

    def self.token=(token)
      @@token = token
    end

    def self.logger
      @@logger ||= lambda {
        if Sinatra::Application.environment == :production
          @@logger = Le.new(@@token)
        else
          @@logger = Le.new(@@token, true)
        end
      }.call
    end

    def self.registered(app)
      app.helpers Logentries::Helpers
    end

  end
  register Logentries
end
