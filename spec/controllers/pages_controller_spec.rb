require 'spec_helper'

describe PagesController do
	render_views
before(:each)do
@base_title="Ruby On Rails Tutorial"
end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	it "should have right title" do
	get 'home'
	response.should have_selector("title", :content => "{@base_title} | Home")
  end
  it "should_have a non-blank body" do
  get 'home'
  response.body.should_not =~ /<body>\s*<\/body>/
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
	it "should have right title" do
	get 'contact'
	response.should have_selector("title", :content => "{@base_title}  | Contact")
  end
  end
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
	it "should have right title" do
	get 'about'
	response.should have_selector("title", :content => "{@base_title} | about")
  end
  end

end
