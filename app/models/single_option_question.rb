class SingleOptionQuestion < Question
  include CommonMethods

  validate :ensure_single_answer

  private

    def ensure_single_answer
      if answers.length > 1
        errors.add(:base, 'can only have one answer')
      end
    end
end
