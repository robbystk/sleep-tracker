When("The user visits the site") do
  visit '/'
end

When("clicks on the {string} button") do |string|
  btn = find_button(string)
  btn.click
end

Then("The button changes to 'Wake Up'") do
  find_button('Wake Up')
end

Then("A sleep record is started") do
  record = SleepRecord.last
  expect(record.sleep_time).to be_within(1).of(DateTime.now)
end

Given("A sleep record has been started") do
  SleepRecord.create!(sleep_time: 8.hours.ago)
end

Then("The sleep record is finished") do
  record = SleepRecord.last
  expect(record.wake_time).to be_within(1).of(DateTime.now)
end

Then("The sleep record can be edited") do
  expect(page).to have_field('Sleep time')
  expect(page).to have_field('Wake time')
  expect(page).to have_button('Update')
end

Then("The sleep record is displayed") do
  expect(page).to have_text(Date.today.to_s)
end
