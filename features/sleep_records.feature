Feature: Sleep records
    Can list, view, create, update, and delete sleep records

    Scenario: Editing an existing sleep record
        # Given The user is logged in
        When The user visits the edit page
        And Enters sleep record data
        And Clicks on the 'Update' button
        Then The sleep record is updated
        And The sleep record is shown
