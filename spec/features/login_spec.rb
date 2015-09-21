require 'rails_helper'
require 'capybara/rails'
require 'capybara/rspec'

RSpec.describe 'Login Feature', type: :feature do #calling method decribe on Rspec and calling a block
  it "works" do #calling a login feature / describe what it's supposed to do, calls a block
    visit '/'
    #binding.pry ->opens pry in console
    expect(page.title).to eq "LIC Wiki"

  end

  it "works" do #calling a login feature / describe what it's supposed to do, calls a block
    visit '/the_hood'
    #binding.pry ->opens pry in console
    expect(page.title).to eq "LIC Wiki"
  end

  it "works" do
    visit '/'
    User.create(email: 'john@gmail.com', password: 'password')

    fill_in 'Email:', with: user.email
    fill_in 'Password:', with: user.password

    click_button 'Submit'
    expect(page).to have_css 'current_user', 'John'
  end
#hw: get login to work + at least 2 other tests
#test for valid/invalid pw

end
