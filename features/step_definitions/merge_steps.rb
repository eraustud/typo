Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end

Then /^the article "(.*?)" should have author "(.*?)"$/ do |title, author|
  Article.find_by_title(title).author.should eq author
end

Then /^article "(.*?)" should not exist$/ do |id|
  Article.exists?(4).should eq false
end
