class SingleOptionQuestionSeeder < BaseSeeder
  def self.seed!
    puts 'Seeding for Single Answer Questions.'
    s = SingleOptionQuestion.new(content: 'Capital of India is?')
    s.options.build(value: 'Bombay')
    s.options.build(value: 'Calcutta')
    s.options.build(value: 'Madras')
    s.options.build(value: 'New Delhi', answer: true)
    s.save
  end
end
