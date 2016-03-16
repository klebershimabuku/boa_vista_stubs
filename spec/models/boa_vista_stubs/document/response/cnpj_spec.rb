require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::Response::Cnpj do
  subject(:instance) { described_class.new }

  describe '#valid_document' do
    it 'returns the content of a valid layout' do
      expect(instance).to receive(:read_layout).with(described_class::LAYOUTS[:valid])
      instance.valid_document
    end
  end

  describe '#invalid_document' do
    it 'returns the content of a invalid layout' do
      expect(instance).to receive(:read_layout).with(described_class::LAYOUTS[:invalid])
      instance.invalid_document
    end
  end
end
