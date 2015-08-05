require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble word path', {:type => :feature}) do
  it('processes the user entry and returns the score for the word entered') do
    visit('/')
    fill_in('word', :with => 'kendra')
    click_button('Send')
    expect(page).to have_content(11)
  end
end
