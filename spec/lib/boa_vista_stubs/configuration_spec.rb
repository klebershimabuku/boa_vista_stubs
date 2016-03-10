require 'rails_helper'

RSpec.describe BoaVistaStubs::Configuration do
  context 'configures the valid parameters' do
    it { expect(BoaVistaStubs.configuration.valid_cpf).to eq('95711895290') }
    it { expect(BoaVistaStubs.configuration.valid_cnpj).to eq('43075237000144') }
  end
end
