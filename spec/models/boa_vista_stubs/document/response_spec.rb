require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::Response do
  describe '.identify' do
    it 'returns a instance of BoaVistaStubs::Document::Response::Cpf' do
      document_type = :CPF

      expect(described_class.identify(document_type)).to eq(BoaVistaStubs::Document::Response::Cpf)
    end

    it 'returns a instance of BoaVistaStubs::Document::Response::Cnpj' do
      document_type = :cnpj

      expect(described_class.identify(document_type)).to eq(BoaVistaStubs::Document::Response::Cnpj)
    end
  end
end
