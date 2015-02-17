class MultipleOptionQuestion < Question
  include CommonMethods

  def select_answer(correct_answer=true)
    _options_ = correct_answer ? answers : non_answers
    _options_.each do |answer|
      yield(answer)
    end
  end
end
