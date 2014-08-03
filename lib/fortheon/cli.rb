require 'thor'
require 'fortheon/constants/version'
require 'fortheon/auth'
require 'fortheon/app'

module Fortheon
  class CLI < Thor

    map ["-v", "--version"] => :version
    desc "version", "Display Fortheon version"
    def version
      puts Fortheon::VERSION
    end

    #######    AUTH    ####### 

    desc 'logging in', 'Authentication Fortheon'
    def login
      Auth.login
    end

    desc 'logout', 'Authentication Fortheon'
    def logout
      Auth.logout
    end

    #######    CREATION    #######

    option :name
    option :tier
    option :platform
    option :instances
    desc "create fortheon server", "create something"
    def create(type)
      if type.eql? 'app'
        App.create(options)
      end
    end


  end
end