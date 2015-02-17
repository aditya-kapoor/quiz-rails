class User < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_answers, dependent: :destroy

  def answer(question_id, option_id)
    user_answers.create(question_id: question_id, option_id: option_id)
  end
end
