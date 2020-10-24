
Feature: Fit and validate an ELMRegressor model with input data
  As a data scientist,
  I want to fit and validate an ELMRegressor with input data
  in order to get a regression model with proper results

  @regression @elm
  Scenario: Fit an ELMRegressor with toy data (easy)
    Given the dataset 'boston'
    And a pre-processing pipeline
    And an ELMRegressor model
    When I fit the pipeline and the ELMRegressor
    Then I compute the score in train and test sets 
    And the results are very good

  @regression @elm
  Scenario: Fit an ELMRegressor with real data (hard)
    Given the dataset 'california'
    And a pre-processing pipeline
    And an ELMRegressor model
    When I fit the pipeline and the ELMRegressor
    Then I compute the score in train and test sets 
    And the results are good enough

   # TODO: classification
   # TODO: Scenario: Predict

