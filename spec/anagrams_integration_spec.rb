require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagrams path', {:type => :feature}) do
  it('processes the user entry and returns the anagrams') do
    visit('/')
    fill_in('word', :with => "fox")
    fill_in('list', :with => "tree, xfo, ofx, oxf")
    click_button("Check Anagrams!")
    expect(page).to have_content('The strings xfo, ofx, and oxf are anagrams of fox.')
  end
end
