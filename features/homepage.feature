Feature: Homepage
    A landing page with a description and sign-in button
    
    Scenario: A user visits the site
        When the user visits the homepage
        Then the user should see information
        And the user should see a sign-up button
