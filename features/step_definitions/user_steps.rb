Given /^there is a User$/ do
  FactoryGirl.create(:user)
end

Given /^the User has posted the message with title "([^'']*)" and body "([^'']*)"$/ do |message_title, message_body|
  User.count.should == 1
  @post = FactoryGirl.create(:message, title: message_title, content: message_body, user: User.first)
  Post.count.should == 1
end

When /^I visit the page from Post index$/ do
  User.count.should == 1
  Post.count.should == 1
  visit(posts_path)
end

Then /^I should see title "([^'']*)"$/ do |text|
  page.should have_content(text)
end

When /^I visit the page from single Post path page$/ do
  User.count.should == 1
  Post.count.should == 1
  visit(post_path(@post))
end

Then /^I should see body "([^'']*)"$/ do |text|
  page.should have_content(text)
end