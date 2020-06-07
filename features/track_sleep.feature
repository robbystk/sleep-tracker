Feature: Sleep tracking
    Can push a button to go in and out of sleep

    Scenario: Going to sleep
        # Given The user is logged in
        When The user visits the site
        And clicks on the 'Go To Sleep' button
        Then A sleep record is started
        And The button changes to 'Wake Up'

