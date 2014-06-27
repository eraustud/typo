Feature: Create Categories
	As a blog administrator
	I want to be able to add categories to my blog

	Background:
		Given the blog is set up
		And I am logged into the admin panel

	Scenario: Successfully create categories
		Given I am on the admin_categories page
		Then I should see "Permalink"