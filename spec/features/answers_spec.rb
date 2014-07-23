require 'rails_helper'

feature 'Manage answers' do
  scenario "allows user to add a new answer to a question" do
    question = create(:question)
    answer = build(:answer)
    visit new_question_answer_path question_id: question.id
    fill_in 'Name', with: answer.answerer
    fill_in 'Answer', with: answer.answer
    click_button 'Submit'
    #TODO: Add expectations about a notice and url
    expect(page).to have_content(answer.answerer)
  end
end
