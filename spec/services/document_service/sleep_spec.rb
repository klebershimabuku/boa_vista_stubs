require 'rails_helper'

RSpec.describe BoaVistaStubs::DocumentService::Sleep do
  describe '.invoke' do
    let(:timeout_seconds_required) { 2 }

    before do
      allow(BoaVista.configuration).to receive(:timeout) { 1 }
    end

    it 'sleeps for some time' do
      expect(described_class).to receive(:sleep).with(timeout_seconds_required)
      described_class.invoke
    end
  end
end
