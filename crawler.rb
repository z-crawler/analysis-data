# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + "/config/initialize/initialize.rb"

Initialize::init
Crawler::run
