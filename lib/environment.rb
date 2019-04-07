#require "project_cli/version"
require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative './project_cli/version'
require_relative './project_cli/cli'
require_relative './project_cli/scraper'
require_relative './project_cli/site'


module ProjectCli
  class Error < StandardError; end
  # Your code goes here...
end
