Feature: Merge Articles
	As a standard user
	In order to avoid multiple similar articles
	I should not be able to merge articles

	Background:
		Given the blog is set up
		And I am logged in as a standard user
		And the following articles exist
			| id | title	| body			| author|
			| 3  | Foobar	| LoremIpsum	| admin |
			| 4	 | Foobar_2 | LoremIpsum 2	| bobby |

	Scenario: Successfully merge articles
		Given I am on the article page for "Foobar"
		Then I should not see "Article id"