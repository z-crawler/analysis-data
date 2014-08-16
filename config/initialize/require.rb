# encoding: utf-8
require 'rubygems'
require 'yaml'
require 'json'
require 'csv'
require 'nokogiri'

# require all library
Dir[File.expand_path(File.dirname(__FILE__)) + '/../*.rb'].each {|file| require file }
Dir[File.expand_path(File.dirname(__FILE__)) + '/../../lib/*.rb'].each {|file| require file }
Dir[File.expand_path(File.dirname(__FILE__)) + '/../../app/models/*.rb'].each {|file| require file }
Dir[File.expand_path(File.dirname(__FILE__)) + '/../../app/helpers/*.rb'].each {|file| require file }
Dir[File.expand_path(File.dirname(__FILE__)) + '/../../app/mailers/*.rb'].each {|file| require file }
Dir[File.expand_path(File.dirname(__FILE__)) + '/../../app/crawlers/*.rb'].each {|file| require file }
