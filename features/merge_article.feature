Feature: Merge Articles
	As a blog administrator
	In order to avoid multiple similar articles
	I want to be able to merge two articles

	Background:
		Given the blog is set up
		And I am logged into the admin panel
		And the following articles exist
			| id | title	| body			| author|
			| 2  | Foobar	| LoremIpsum	| admin |
			| 3	 | Foobar 2 | LoremIpsum 2	| bobby |

	Scenario: Successfully merge articles
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "3"
		And I press "Merge"
		Then the article "Foobar" should have body "LoremIpsum LoremIpsum 2"

	Scenario: Merged article should have author of parent
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "3"
		And I press "Merge"
		Then the article "Foobar" should have author "admin"