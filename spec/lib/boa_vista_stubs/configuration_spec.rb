require 'rails_helper'

RSpec.describe BoaVistaStubs::Configuration do
  context 'configures the valid parameters' do
    it { expect(BoaVistaStubs.configuration.valid_cpf).to eq(/^306/) }
    it { expect(BoaVistaStubs.configuration.valid_cnpj).to eq(/^4307/) }
    it { expect(BoaVistaStubs.configuration.timeout_document).to eq(/^999/) }
  end
end
