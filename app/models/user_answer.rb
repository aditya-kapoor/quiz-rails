class UserAnswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :option

  validates :user, :question, presence: true
end
