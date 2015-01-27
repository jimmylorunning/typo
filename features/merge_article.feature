Feature: Merge Articles
  As a blog administrator
  In order to reduce duplicate content 
  I want to be able to merge two articles together

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
      | id | title        | body              |
      |  2 | Foobar       | Lorem Ipsum       |
      |  3 | Barfoo       | Lambchop Bone     |

  Scenario: Successfully merge articles
    Given I am on the articles page for "Foobar"
    And I fill in "merge_with" with "3"  
    And I press "Merge"
    Then the article "Foobar" should have body "Lorem Ipsum Lambchop Bone"
    And show me the page
