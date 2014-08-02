require 'thor'
require 'fortheon/version'

module Fortheon
  class CLI < Thor
    map ["-v", "--version"] => :version

    desc "version", "Display Fortheon version"
    def version
      puts Fortheon::VERSION
    end
  end
end