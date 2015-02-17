require_relative 'base_seeder'

%w(BooleanOptionQuestionSeeder MultipleOptionQuestionSeeder NoChoiceQuestionSeeder SingleOptionQuestionSeeder).each do |_seeder_|
  _seeder_.constantize.seed!
end
