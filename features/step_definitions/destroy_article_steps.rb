Given /^I see the two articles$/ do
  Cargo::Article.all.each do |article|
    within('.articles') do
      within("#article-#{article.id}") do
        page.should have_content(article.title)
        page.should have_content(article.author.username)
        page.should have_content(article.last_update_by.username)
      end
    end
  end
end

When /^I delete one of them$/ do
  @article_id = Cargo::Article.last.id
  within("#article-#{@article_id}") { click_link("Destroy") }
end

Then /^I should be redirected to the articles index page$/ do
  current_path.should == "/cargo/articles"
end

Then /^I should see the article remaining in the database$/ do
  article = Cargo::Article.last
  within('.articles') do
    within("#article-#{article.id}") { page.should have_content(article.title) }
  end
end

Then /^I should not see the one deleted$/ do
  within('.articles') do
    page.should_not have_css("#article-#{@article_id}")
  end
end