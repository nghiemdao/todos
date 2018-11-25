require 'rails_helper'

RSpec.feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    title = 'Buy milk'
    click_link 'Add a new todo'
    fill_in 'Title', with: title
    click_button 'Submit'

    click_on 'Mark complete'

    expect(page).to have_css('.todos li.completed', text: title)
  end
end
