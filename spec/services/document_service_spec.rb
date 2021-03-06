require 'rails_helper'

RSpec.describe BoaVistaStubs::DocumentService do
  describe '#call' do
    let(:document) { BoaVistaStubs::Document::Cpf.new('12345') }
    let(:fake_class) { double }

    before do
      allow(BoaVistaStubs::Document).to receive(:identify).with('search params') { document }
    end

    context 'when timeout document' do
      before do
        allow(document).to receive(:timeout_document?) { true }
      end

      it 'calls sleep to cause timeout error' do
        expect(BoaVistaStubs::DocumentService::Sleep).to receive(:invoke)

        BoaVistaStubs::DocumentService.call('search params')
      end
    end

    context 'when document is valid' do
      let(:response) { instance_double('response', valid_document: 'this is a valid response') }

      before do
        allow(document).to receive(:valid?) { true }
        allow(document).to receive(:timeout_document?) { false }

        allow(BoaVistaStubs::Document::Response).to receive(:identify).with(anything) { fake_class }
        allow(fake_class).to receive(:new) { response }
      end

      it 'returns the valid response' do
        expect(BoaVistaStubs::DocumentService.call('search params')).to eq(response.valid_document)
      end
    end

    context 'when document is invalid' do
      let(:response) { instance_double('response', invalid_document: 'this is a invalid response') }

      before do
        allow(document).to receive(:valid?) { false }
        allow(document).to receive(:timeout_document?) { false }

        allow(BoaVistaStubs::Document::Response).to receive(:identify).with(anything) { fake_class }
        allow(fake_class).to receive(:new) { response }
      end

      it 'returns the invalid response' do
        expect(BoaVistaStubs::DocumentService.call('search params')).to eq(response.invalid_document)
      end
    end
  end
end
