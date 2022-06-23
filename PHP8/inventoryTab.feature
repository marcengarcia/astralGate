Feature: Modifying inventory information about the products

    Scenario: Invnetory - Creating new Inventory
        Given I have an active product
        And I am in the 'Inventory' tab
        And I click 'Update inventory'
        Then I can update the inventory for my product

    Scenario: Invnetory - Updating Inventory
        Given I have an active product
        And I am in the 'Inventory' tab
        And I click 'Update inventory'
        When I complete the form
        And I click 'UPDATE'
        Then My new inventory should be updated