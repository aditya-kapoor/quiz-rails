class Option < ActiveRecord::Base
  belongs_to :question

  validates :question, :value, presence: true

  scope :answers, -> { where(answer: true) }
  scope :non_answers, -> { where.not(answer: true) }
end
