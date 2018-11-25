require 'rails_helper'

RSpec.feature 'User sees own todos' do
  scenario "doesn't see others' todos" do
    title = 'Buy milk'
    Todo.create(title: title, email: 'someone_else@example.com')

    sign_in_as 'someone@example.com'

    expect(page).to_not have_css('.todos li', text: title)
  end
end
