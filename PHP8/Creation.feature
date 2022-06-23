Feature: Product creation

    Scenario: Create a new product in the PIM
        Given  I'm loged into JASPER
        And I navigate to the 'Products' page
        And I click on 'Create Product'
        And I enter a new 'Product Name'
        And I click 'Create'
        Then I should be able to create a new product


    