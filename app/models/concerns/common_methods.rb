module CommonMethods
  def select_answer(correct_answer=true)
    _option_ = correct_answer ? answers.first : non_answers.sample
    yield(_option_)
  end

  def display
    puts content
    puts options.collect { |option| option.value }.join("\n")
  end
end
