require 'rails_helper'

RSpec.describe BoaVistaStubs::Configuration do
  context 'configures the valid parameters' do
    it { expect(BoaVistaStubs.configuration.valid_cpf).to include('95711895290') }
    it { expect(BoaVistaStubs.configuration.valid_cpf).to include('19222927451') }

    it { expect(BoaVistaStubs.configuration.valid_cnpj).to include('43075237000144') }
    it { expect(BoaVistaStubs.configuration.valid_cnpj).to include('86165232000115') }
  end
end
