Feature: Modifying CATEGORY information about the products

    Scenario: Adding a CATEGORY to a new product
        Given I have an active product
        And I am in the 'Categories' tab
        When Search for a valid 'CATEGORY'
        And I select from the offered results
        Then I can add the chosen category to my product

    Scenario: Removing a CATEGORY from a new product
        Given I have an active product
        And I am in the 'Categories' tab
        When I click 'Remove' on any category
        Then the category should be removed from my product

    Scenario: Filter categories of a product
        Given I have an active product
        And I am in the 'Categories' tab
        When I click the 'Filter by...' dropdown
        And I select an available category
        Then the categories display should should match my selection