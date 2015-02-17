class BooleanOptionQuestion < Question
  include CommonMethods

  validate :ensure_boolean_options

  private

    def ensure_boolean_options
      unless options.collect(&:value).sort.eql?(%w(false true))
        errors.add(:options, 'must have only boolean options')
      end
    end
end
