Feature: Sleep tracking
    Can push a button to go in and out of sleep

    Scenario: Going to sleep
        # Given The user is logged in
        When The user visits the site
        And clicks on the 'Go To Sleep' button
        Then A sleep record is started
        And The button changes to 'Wake Up'

    Scenario: Waking up
        # Given The user is logged in
        Given A sleep record has been started
        When The user visits the site
        And clicks on the 'Wake Up' button
        Then The sleep record is finished
        And The sleep record can be edited
