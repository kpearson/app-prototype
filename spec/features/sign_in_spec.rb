require "rails_helper"

describe "the signin process" do
  it "signs up a new user" do
    visit '/users/sign_up'
    within("#new_user") do
      fill_in 'Email', with: 'user1@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
    end
    click_button 'Sign up'
    expect(page).to have_content 'Welcome!'
  end
end
