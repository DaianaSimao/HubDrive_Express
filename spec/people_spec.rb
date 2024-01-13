require 'rails_helper'

RSpec.describe People, type: :model do
  it 'creates a new People object' do
    people = People.create(name: 'Karine',last_name: 'Santos', cpf: '12345678910', address: 'Rua Teste, 123', telephone: '12345678910', birth_date: '01/01/2000')
    expect(People.count).to eq(1)
  end
end
