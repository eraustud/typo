Feature: Merge Articles
	As a blog administrator
	In order to avoid multiple similar articles
	I want to be able to merge two articles

	Background:
		Given the blog is set up
		And I am logged into the admin panel
		And the following articles exist
			| id | title	| body			| author|
			| 3  | Foobar	| LoremIpsum	| admin |
			| 4	 | Foobar_2 | LoremIpsum 2	| bobby |

	Scenario: Successfully merge articles
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "4"
		And I press "Merge"
		Then the article "Foobar" should have body "LoremIpsum LoremIpsum 2"

	Scenario: Merged article should have author of parent
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "4"
		And I press "Merge"
		Then the article "Foobar" should have author "admin"

	Scenario: Merged article should have author of parent
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "4"
		And I press "Merge"
		Then the article "Foobar" should have comments "foobarcomment"

	Scenario: Merged article should not exist after merge
		Given I am on the article page for "Foobar"
		And I fill in "merge_with" with "4"
		And I press "Merge"
		Then article "4" should not exist