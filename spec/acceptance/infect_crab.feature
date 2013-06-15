Feature: Infect a crab

  Background:
    Given there is a crab
    And there is a sacculini carcini

  Scenario: infect the crab
    When the sacculini carcini attaches to the crab's attennae
    And the sacculini carcini sheds its abdomen and thorax
    And the sacculini carcini migrates to the mid-gut of the crab
    And several weeks pass
    Then the crab's abdomen should have an externa
