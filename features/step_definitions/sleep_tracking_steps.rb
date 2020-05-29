When("The user visits the site") do
  visit '/'
end

When("clicks on the 'Go To Sleep' button") do
  btn = find_button('Go To Sleep')
  btn.click
end

Then("The button changes to {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("A sleep record is started") do
  record = SleepRecord.last
  expect(record.sleep_time).to be_within(1).of(DateTime.now)
end
