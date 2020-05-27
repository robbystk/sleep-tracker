When("the user visits the homepage") do
    visit '/'
end

Then("the user should see information") do
  expect(page).to have_content('Simple Sleep Tracker')
end

Then("the user should see a sign-up button") do
  find_button('Sign Up')
end

