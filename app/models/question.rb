class Question < ActiveRecord::Base
  has_many :options

  validates :content, presence: true

  delegate :answers, :non_answers, to: :options
end
