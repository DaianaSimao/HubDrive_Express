require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'creates a new user' do
      user = User.create(email: 'test@example.com', password: 'password', password_confirmation: 'password')
      people = People.create(name: 'Karine',last_name: 'Santos', cpf: '12345678910', address: 'Rua Teste, 123', telephone: '12345678910', birth_date: '01/01/2000')
      expect(user).to be_valid
    end
  end
end
