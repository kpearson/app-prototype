require "rails_helper"

describe User do
  let(:user) { create :user }

  it { should validate_presence_of :email }
  it { should validate_presence_of :encrypted_password }

  context 'authentication' do
    it 'sends email confermation' do
      
    end
  end
end
