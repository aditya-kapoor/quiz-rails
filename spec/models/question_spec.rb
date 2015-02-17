require 'spec_helper'

describe Question do
  context 'Associations' do
    it { should have_many(:options) }
  end

  context 'Validations' do
    it { should validate_presence_of(:content) }
  end

  context 'Delegations' do
    it { should delegate_method(:answers).to(:options) }
    it { should delegate_method(:non_answers).to(:options) }
  end
end
