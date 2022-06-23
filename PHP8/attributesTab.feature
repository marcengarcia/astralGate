Feature: Modifying Attributes information about the products

    Scenario: Adding attributes to a product
        Given I have an active product
        And I am in the 'Attributes' tab
        Then I can select what attribute to edit

    Scenario: Adding attributes to a product - Master
        Given I have an active product
        And I am in the 'Attributes' tab
        Then I can select MASTER as the attribute to edit

    Scenario: Adding attributes to a product - Other
        Given I have an active product
        And I am in the 'Attributes' tab
        And I click on the attribute dropdown
        Then I can select other attributes to edit

    Scenario: Collapsing the attribute form
        Given I have an active product
        And I am in the 'Attributes' tab
        And I click on 'Collapse all'
        Then The attribute form should collapse
        And The 'Collapse All' button should change text to 'Expand all'

    Scenario: Expanding the attribute form
        Given I have an active product
        And I am in the 'Attributes' tab
        And The form is collapsed
        And I click on 'Expand all'
        Then The attribute form should expand
        And The 'Expand All' button should change text to 'Collapse all'

    Scenario: Adding attributes to a product - Default
        Given I have an active product
        And I am in the 'Attributes > Default' tab
        And I click on the desired attribute to edit
        And I click 'Save'
        Then I the attribute should be preserved

    Scenario: Removing attributes to a product - Default
        Given I have an active product
        And I am in the 'Attributes > Default' tab
        And I click on the desired attribute to remove
        And I clear the field
        And I click 'Save'
        Then I the attribute should be removed

    Scenario: Adding attributes to a product - Storytelling
        Given I have an active product
        And I am in the 'Attributes > Storytelling' tab
        And I click on the desired attribute to edit
        And I click 'Save'
        Then I the attribute should be preserved

    Scenario: Removing attributes to a product - Storytelling
        Given I have an active product
        And I am in the 'Attributes > Storitelling' tab
        And I click on the desired attribute to remove
        And I clear the field
        And I click 'Save'
        Then I the attribute should be removed