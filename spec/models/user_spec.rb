require 'spec_helper'

describe User do
  context 'Associations' do
    it { should have_many(:user_answers).dependent(:destroy) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
  end
end
