Given(/^the following articles exist:$/) do |table|
  Article.create table.hashes
end

Then(/^the article "(.*?)" should have body "(.*?)"$/) do |title, body|
  Article.find_by_title(title).body.should eq body
end

Given(/^the following comments exist:$/) do |table|
  Comment.create table.hashes
end

Then(/^the comment "(.*?)" should belong to "(.*?)"$/) do |comment, article_title|
  a_id = Article.find_by_title(article_title).id
  Comment.find_by_body(comment).article_id.should eq a_id
end
