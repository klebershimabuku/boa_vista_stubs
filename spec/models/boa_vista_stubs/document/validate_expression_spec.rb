require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::ValidateExpression do
  describe '#initialize' do
    it 'initializes with a value' do
      validator = described_class.new('123456')
      expect(validator).to be_a_instance_of(described_class)
    end
  end

  describe '#valid_cpf?' do
    it 'returns true when cpf regex matches the value' do
      validator = described_class.new('30630012345')
      expect(validator.valid_cpf?).to be_truthy
    end

    it 'returns false when cpf regex does not matches the value' do
      validator = described_class.new('30530012345')
      expect(validator.valid_cpf?).to be_falsey
    end
  end

  describe '#valid_cnpj?' do
    it 'returns true when cnpj regex matches the value' do
      validator = described_class.new('430785784000130')
      expect(validator.valid_cnpj?).to be_truthy
    end

    it 'returns false when cnpj regex does not matches the value' do
      validator = described_class.new('62885784000130')
      expect(validator.valid_cnpj?).to be_falsey
    end
  end

  describe '#timeout?' do
    it 'returns true when timeout document regex matches the value' do
      validator = described_class.new('99989222222')
      expect(validator.timeout_document?).to be_truthy
    end

    it 'returns false when timeout document regex does not matches the value' do
      validator = described_class.new('89123222220')
      expect(validator.timeout_document?).to be_falsey
    end
  end
end
