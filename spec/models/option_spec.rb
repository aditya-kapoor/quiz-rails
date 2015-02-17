require 'spec_helper'

describe Option do
  context 'Associations' do
    it { should belong_to(:question) }
  end

  context 'Validations' do
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:value) }
  end
end
