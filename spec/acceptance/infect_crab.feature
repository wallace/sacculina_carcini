Feature: Infect a crab

  Background:
    Given there is a crab
    And there is a sacculina carcini

  Scenario: infect the crab
    When the sacculina carcini attaches to the crab
    And the sacculina carcini sheds its abdomen and thorax
    And the sacculina carcini migrates to the mid-gut of the crab
    And several weeks pass
    Then the crab's abdomen should have an externa
