class BooleanOptionQuestionSeeder < BaseSeeder
  def self.seed!
    puts 'Seeding for Boolean Answer Questions.'
    s = BooleanOptionQuestion.new(content: 'Cricket is favorite sports in India?')
    s.options.build(value: 'true', answer: true)
    s.options.build(value: 'false')
    s.save!
  end
end
