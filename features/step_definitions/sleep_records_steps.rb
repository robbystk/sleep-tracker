Given("An existing sleep record") do
  SleepRecord.create!(sleep_time: 8.hours.ago, wake_time: 0.seconds.ago)
end

When("The user visits the edit page") do
  record = SleepRecord.last
  visit edit_sleep_record_path(record)
end

When("Enters sleep record data") do
  new_sleep_time = (8.hours + 5.minutes).ago
  new_wake_time = 5.minutes.from_now
  fill_in('Sleep time', with: new_sleep_time.to_s)
  fill_in('Wake time', with: new_wake_time.to_s)
end

When("Clicks on the 'Update' button") do
  click_button('Update')
end

Then("The sleep record is updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The sleep record is shown") do
  pending # Write code here that turns the phrase above into concrete actions
end
