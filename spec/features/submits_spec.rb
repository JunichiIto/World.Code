require 'spec_helper'

feature 'Submits' do
  scenario 'post submit' do
    visit submits_path
    click_link "New Submit"

    expect {
      fill_in "Description", with: "説明"
      select "Ruby", from: "Language"
      fill_in "Source", with: "puts 'Hello world'"
      click_button "Create Submit"
    }.to change(Submit, :count).by(1)

    expect {
      fill_in "Content", with: "いいですね"
      click_button "Create Response"
    }.to change(Response, :count).by(1)
  end
end