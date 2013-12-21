require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
#require "C:/Users/andrey.sledzinskiy/RubymineProjects/untitled1/lib/pages/*.rb"

Dir["D:/SeleniumCucumberFramework/untitled1/lib/pages/*.rb"].each {|file| require file }
