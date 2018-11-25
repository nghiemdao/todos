require 'rails_helper'

RSpec.feature 'User creates todo', type: :feature do
  scenario 'successfully' do
    sign_in
    click_link 'Add a new todo'
    fill_in 'Title', with: 'Buy milk'
    click_button 'Submit'

    expect(page).to have_css('.todos li', text: 'Buy milk')
  end
end
