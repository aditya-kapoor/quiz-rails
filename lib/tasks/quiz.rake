%w(Will Ramu).each do |user|
  desc "Fetches Record for #{ user }"
  task "create_record_for_#{ user.downcase }" do
    puts "Creating user record for #{ user }."
    @user_record = User.create(name: user)
  end

  desc "Selects Answers for #{ user }"
  task "perform_result_for_#{ user.downcase }", [:select_correct_answers] do |t, args|
    puts "Processing Results for #{ user }."
    Question.find_each do |question|
      question.select_answer(args[:select_correct_answers]) { |option| @user_record.answer(question.id, option.id) }
    end
  end

  desc "Loads User Record for #{ user }"
  task "fetch_record_for_#{ user.downcase }" do
    puts "Fetching user record for #{ user }."
    @user = User.find_by(name: user)
  end

  desc "Shows Report Card for #{ user }"
  task "show_report_card_for_#{ user.downcase }" do
    Question.all.each_with_index do |question, index|
      puts "Question #{ index + 1 }"
      question.display
      user_answers = @user.user_answers.includes(:option).where(question_id: question.id)
      puts "#{ @user.name } answered #{ user_answers.collect { |answer| answer.option.value } }"
    end
  end
end

desc 'Process Results for Ramu.'
task process_result_for_ramu: [:environment, :create_record_for_ramu] do
  Rake::Task["perform_result_for_ramu"].invoke(true)
end

desc 'Process Results for Will.'
task process_result_for_will: [:environment, :create_record_for_will] do
  Rake::Task["perform_result_for_will"].invoke(false)
end

desc 'Prints result for Ramu'
task display_result_for_ramu: [:environment, :fetch_record_for_ramu, :show_report_card_for_ramu] do
end

desc 'Prints result for Will.'
task display_result_for_will: [:environment, :fetch_record_for_will, :show_report_card_for_will] do
end
