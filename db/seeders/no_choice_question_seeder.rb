class NoChoiceQuestionSeeder < BaseSeeder
  def self.seed!
    puts 'Seeding for Questions with no options.'

    n = NoChoiceQuestion.new(content: 'Madan has 4 mangoes. His mother gave him 3 more mangoes. Now Madan has __ mangoes. He gave 2 mangoes to his sister. Now he has ___ mangoes.')
    n.options.build(value: 7, answer: true)
    n.options.build(value: 5, answer: true)
    n.save

    n = NoChoiceQuestion.new(content: 'Complete the series 25,35,45, __, __, __ ')
    n.options.build(value: 55, answer: true)
    n.options.build(value: 65, answer: true)
    n.options.build(value: 75, answer: true)
    n.save
  end
end
