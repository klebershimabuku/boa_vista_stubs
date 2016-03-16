require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::Response do
  describe '.identify' do
    it 'returns a instance of BoaVistaStubs::Document::Response::CPF' do
      document_type = :CPF

      expect(described_class.identify(document_type)).to eq(BoaVistaStubs::Document::Response::CPF)
    end

    it 'returns a instance of BoaVistaStubs::Document::Response::CNPJ' do
      document_type = :cnpj

      expect(described_class.identify(document_type)).to eq(BoaVistaStubs::Document::Response::CNPJ)
    end
  end
end
