#class Browser

 # def initialize(browser)
  #@browser = browser

  case ENV['BrowserDriver']
    when /firefox/
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, :browser => :firefox)
      end
  end
  #  end
  Capybara.app_host = 'http://www.allceramic.com.ua/'
  Capybara.default_driver = :selenium
#end