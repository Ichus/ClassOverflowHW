require 'rails_helper'

describe Answer, type: :model do
  let(:answer) { subject }

  before { expect(answer).not_to be_valid }

  it 'validates the presence of answerer' do
    expect(answer.errors).to have_key(:answerer)
  end

  it 'validates the presence of content' do
    expect(answer.errors).to have_key(:answer)
  end
end
