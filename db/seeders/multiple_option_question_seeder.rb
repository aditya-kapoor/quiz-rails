class MultipleOptionQuestionSeeder < BaseSeeder
  def self.seed!
    puts 'Seeding for Multiple Answer Questions.'
    m = MultipleOptionQuestion.new(content: 'Cost of a candy is 5 cents. I have 30 cents. Select all true statements.')
    m.options.build(value: ' I can buy 2 candies.', answer: true)
    m.options.build(value: ' I can buy 4 candies.', answer: true)
    m.options.build(value: ' I can buy 6 candies.', answer: true)
    m.options.build(value: ' I can buy 8 candies.')
    m.options.build(value: ' I can buy 10 candies.')
    m.save
  end
end
