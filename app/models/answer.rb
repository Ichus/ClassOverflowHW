class Answer < ActiveRecord::Base
  belongs_to :question

  validates :answerer, :answer, presence: true
end
