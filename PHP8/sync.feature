@categories @sync @newCategory
Feature: PHP 8 migration
  Scenario: Sync a new category
    Given an user has created a new category
     When they click 'save' on a category version
     Then the new category should be synced automatically

@categories @sync @newProduct
Feature: PHP 8 migration
  Background: Having synced a new category
    Given a new category has been created

  Scenario: Sync a new product for a new category
    Given there is a new product created on the PIM
     When the user adds the newly created category to the new product
     And enables the product on the desired channel
     And the user clicks 'Full sync'
     Then the product should be synced to the corresponding endpoint

@categories @sync @newProduct
Feature: PHP 8 migration
  Background: Having synced a new category
    Given a new category has been created

  Scenario: Add an existing product to a new category
    Given there is a newly created category
     And the user adds that category to an existing product
     When the user enables the product
     And the user clicks 'Full sync'
     Then the product should be synced to the corresponding endpoint

@categories @sync @existingProduct
Feature: PHP 8 migration
  Scenario: Remove a category from a product
    Given a category is added to a product
     When the user removes that category from that product
     And the user clicks 'Full sync'
     Then the product should be synced 
     And the category removed for that product from the endpoint

@disable 
Feature: PHP 8 migration
  Background: Having synced a prodcut
    Given the user synced succesfully a product

  Scenario: Disable a synced product
    Given there is an already existing product
     When the user selects 'disable' on the channel tab
     Then the product should be disabled from the from the corresponding endpoint

@enable @sync 
Feature: PHP 8 migration
  Scenario: Enable a product
    Given there is a product on the PIM
     When the user 'Enables' that product on a channel
     And the user clicks 'Full sync'
     Then the product should be pushed to the corresponding endpoint

@asset @sync
Feature: PHP 8 migration 
  Scenario: Sync a new asset on a product
    Given there is an already existing product on the PIM
     When the user adds a new asset
     And the user clicks 'asset sync'
     Then the new asset should be pushed to the desired endpoint

@asset @sync
Feature: PHP 8 migration 
  Scenario: Remove an asset from a product
    Given there is an already existing product on the PIM
     When the user removes an asset
     And the user clicks 'asset sync'
     Then the new asset should be removed from the desired endpoint
