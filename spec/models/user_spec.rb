require 'spec_helper'

describe User do
  
  context 'model' do
    
    it { should have_fields(:email, :first_name, :last_name) }
    
    
    
  end
  
  
  describe '#name' do
    
    subject { FactoryGirl.create(:user) }
    
    it 'has a name' do
      expect(subject.name).to eq("#{subject.first_name} #{subject.last_name}") 
    end
  end
end
