class NoChoiceQuestion < Question
  def select_answer(correct_answer=true)
    _options_ = correct_answer ? answers : []
    _options_.each do |answer|
      yield(answer)
    end
  end

  def display
    puts content
  end
end
