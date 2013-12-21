Given(/^I use "(.*?)" method on "(.*?)" page$/) do |method, page|

  page1 = Object.const_get(page)
  #method1 = Object.const_get(method)
  puts page1.new.getPage.inspect()
  #method1 = Object.const_get(method)
  #puts "#{page.method()}"
  #page1.new.method1()

end
=begin
When(/^I use "(.*?)" method on "(.*?)" page$/) do    |method, page|
  page.method()
end
=end
Then(/^I get test$/) do
  pending # express the regexp above with the code you wish you had
end