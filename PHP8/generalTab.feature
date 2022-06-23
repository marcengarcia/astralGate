Feature: Modifying general information about the products

    Scenario: Add an SKU to a new product
        Given I have an active product
        And I am in the 'General' tab
        Then I can add an 'SKU' to the product

    Scenario: Add a short description to a new product
        Given I have an active product
        And I am in the 'General' tab
        Then I can add a 'Short description' to the product

    Scenario: Add a Long description to a new product
        Given I have an active product
        And I am in the 'General' tab
        Then I can add a 'Long description' to the product

    Scenario: Add a Shipping notes to a new product
        Given I have an active product
        And I am in the 'General' tab
        Then I can add a 'Shipping notes' to the product

    Scenario: Add a Warranty Info to a new product
        Given I have an active product
        And I am in the 'General' tab
        Then I can add a 'Warranty Info' to the product

    Scenario: Add a Brand to a new product
        Given I have an active product
        And I am in the 'General' tab
        And I open the 'Brand' dropdown
        Then I can add a 'Brand' to the product

    Scenario: Select Brand Visibility
        Given I have an active product
        And I am in the 'General' tab
        And I click the "visibility" checkbox
        Then I can select 'Brand visibility' to the product on the frontend

    Scenario: Mark product as featured
        Given I have an active product
        And I am in the 'General' tab
        And I click the "Featured product" checkbox
        Then I can select if the product is 'featured'

    Scenario: Updating product changes
        Given I have an active product
        And I am in the 'General' tab
        When I click the 'Update' button
        Then all changes are saved and i see the message 'Product successfully saved'