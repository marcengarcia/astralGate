Feature: Modifying price information about the products

    Scenario: Active price records - Creating new price
        Given I have an active product
        And I am in the 'Pricing > Active price records' tab
        And I click 'Create Price'
        Then I can create a price to bind to my product

    Scenario: Active price records - Setting a new price by store
        Given I have an active product
        And I am in the 'Pricing > Active price records' tab
        And I selected 'Create price'
        When I complete the form
        And I select the region on the MAP field
        Then I can create a price to bind to my product

    Scenario: Active price records - Setting a time schedule
        Given I have an active product
        And I am in the 'Pricing > Active price records' tab
        And I selected 'Create price'
        When I complete the form
        And I select a start time
        And I select an end time
        Then I can create a price with a time schedule

    Scenario: Active price records - Setting multiple prices
        Given I have an active product
        And I am in the 'Pricing > Active price records' tab
        And I already have an active price
        And I selected 'Create price'
        When I complete the form
        Then I can create a new price for my product

    Scenario: Active price records - Filtering multiple prices
        Given I have an active product
        And I am in the 'Pricing > Active price records' tab
        And I already have multiple active price
        And I selected 'Show...' dropdown
        Then I can filter how many prices I can see on screen

    Scenario: Active price records - Expiring a price
        Given I have an active product
        And I am in the 'Pricing > Furture price records' tab
        And I already have an active price
        When I click "expire price"
        And I confirm the action
        Then The price should be disabled
        And A toast message should confirm the action
        And The price should be displayed only on expired prices

    Scenario: Future price records
        Given I have an active product
        And I am in the 'Pricing > Furture price records' tab
        And I already have a future price
        Then I can see my future prices

    Scenario: Expired price records
        Given I have an active product
        And I am in the 'Pricing > Expired price records' tab
        And I already have an expired price
        Then I can see my expired prices