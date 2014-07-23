require 'rails_helper'

RSpec.describe AnswersController, :type => :controller do

  describe "GET 'new'" do
    it "returns http success" do
      question = create(:question)
      get new_question_answer_path question_id: question.id
      expect(response).to be_success
    end
  end

  describe "POST 'create'" do

  end

end
