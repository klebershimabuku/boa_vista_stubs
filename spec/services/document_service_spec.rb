require 'rails_helper'

RSpec.describe BoaVistaStubs::DocumentService do
  describe '#call' do
    context 'when timeout is enabled' do
      let(:document) { BoaVistaStubs::Document::CPF.new('12345') }

      before do
        allow(BoaVistaStubs::Document).to receive(:identify).with('search params') { document }
        allow(document).to receive(:timeout?) { true }
      end

      it 'raises timeout error' do
        expect { BoaVistaStubs::DocumentService.call('search params') }.to raise_error(BoaVista::Errors::Timeout)
      end
    end

    context 'when document is valid'

    context 'when document is invalid'
  end
end
