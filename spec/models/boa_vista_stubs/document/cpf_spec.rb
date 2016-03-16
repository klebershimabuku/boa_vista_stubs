require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::CPF do
  subject(:instance) { described_class.new(document_number) }

  let(:document_number) { '86165232000115' }

  describe '#initialize' do
    it { expect(instance).to be_a_instance_of(described_class) }
  end

  describe '#valid?' do
    it 'returns true when the document number is included in configuration' do
      document_number = "30630011299   "

      document = described_class.new(document_number)

      expect(document).to be_valid
    end

    it 'returns false when the document number is not included in configuration' do
      document_number = '12345678910'

      document = described_class.new(document_number)

      expect(document).to_not be_valid
    end
  end

  describe '#document_type' do
    it { expect(instance.document_type).to eq(:CPF) }
  end
end
