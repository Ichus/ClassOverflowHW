require 'rails_helper'

feature 'Manage questions' do
  scenario 'lists all questions on #index' do
    question = create_list(:question, 2)
    visit questions_path
    expect(page).to have_content('Title 3')
    expect(page).to have_content('Title 4')
  end

  scenario 'lists question on #show' do
    question = create(:question)
    visit question_path id: question.id
    expect(page).to have_content(question.title)
  end

  scenario "allows user to add a new question" do
    question = build(:question)
    visit new_question_path
    fill_in 'Title', with: question.title
    fill_in 'Content', with: question.content
    click_button 'Submit'
    #TODO: Add expectations about a notice and url
    expect(page).to have_content(question.title)
  end
end
