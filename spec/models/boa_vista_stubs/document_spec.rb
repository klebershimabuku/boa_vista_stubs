require 'rails_helper'

RSpec.describe BoaVistaStubs::Document do

  let(:consulta_params) do
    'C' * 68
  end

  describe '.identify' do
    it 'returns a instance of Document::CPF' do
      document = described_class.identify(consulta_params + '1')

      expect(document).to be_a_instance_of(BoaVistaStubs::Document::CPF)
    end

    it 'returns a instance of Document::CNPJ' do
      document = described_class.identify(consulta_params + '2')

      expect(document).to be_a_instance_of(BoaVistaStubs::Document::CNPJ)
    end
  end

  describe '#document_number' do
    context 'cpf' do
      let(:document_number) { '00019222927451' }

      it 'returns document number' do
        params = consulta_params + '1' + document_number

        document = described_class.identify(params)

        expect(document.document_number).to eq('19222927451')
      end
    end

    context 'cnpj' do
      let(:document_number) { '86165232000115' }

      it 'returns document number' do
        params = consulta_params + '2' + document_number

        document = described_class.identify(params)

        expect(document.document_number).to eq(document_number)
      end
    end
  end

end
