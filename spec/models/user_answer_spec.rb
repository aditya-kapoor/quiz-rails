require 'spec_helper'

describe UserAnswer do
  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
    it { should belong_to(:option) }
  end

  context 'Validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:question) }
  end
end
