require 'rails_helper'

RSpec.describe BoaVistaStubs::DocumentService::Timeout do
  describe '.invoke' do
    it { expect { described_class.invoke }.to raise_error(BoaVista::Errors::Timeout) }
  end
end
