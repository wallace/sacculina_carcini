Feature: Infect a crab

  Background:
    Given there is a crab
    And there is a sacculini carcini

  Scenario: infect the crab
    When the sacculini carcini attaches to the crab's attenae
    And the sacculini carcini sheds its abdomen and thorax
    And the sacculini carcini migrates to the mid-gut of the crab (just below the heart)
    And the sacculini carcini extends tendrils to secure itself and for nutrition
    And several weeks pass
    Then the sacculini carcini extends externa through the abdomen of the crab

