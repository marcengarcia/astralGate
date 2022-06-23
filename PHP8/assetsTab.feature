Feature: Modifying Asset information about the products

    Scenario: Select asset target store
        Given I have an active product
        And I am in the 'Assets' tab
        And I click the region dropdown
        Then I can select the store to store the asset

    Scenario: Add a new asset - By upload
        Given I have an active product
        And I am in the 'Assets' tab
        And I click 'Upload Asset'
        Then I can add an upload an asset to the product

    Scenario: Add a new asset - By URL
        Given I have an active product
        And I am in the 'Assets' tab
        And I click 'Add Asset by URL'
        Then I can add an upload an asset to the product

    Scenario: Add a new asset - By dragging into page
        Given I have an active product
        And I am in the 'Assets' tab
        And I drag an image into the asset section of the page
        Then the asset should be added to the product

    Scenario: Save an asset order
        Given I have an active product
        And I am in the 'Assets' tab
        And I added an asset
        When I click 'Save asset order'
        Then My assets orders should be saved

