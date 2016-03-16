require 'rails_helper'

RSpec.describe BoaVistaStubs::Document do

  let(:search_params) do
    'C' * 68
  end

  describe '.identify' do
    it 'returns a instance of Document::Cpf' do
      document = described_class.identify(search_params + '1')

      expect(document).to be_a_instance_of(BoaVistaStubs::Document::Cpf)
    end

    it 'returns a instance of Document::Cnpj' do
      document = described_class.identify(search_params + '2')

      expect(document).to be_a_instance_of(BoaVistaStubs::Document::Cnpj)
    end
  end
end
