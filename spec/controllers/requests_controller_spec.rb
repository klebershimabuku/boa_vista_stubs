require 'rails_helper'

RSpec.describe BoaVistaStubs::RequestsController, type: :controller do
  routes { BoaVistaStubs::Engine.routes }

  describe 'GET :index' do
    let(:request_string) do
      BoaVista::Request.new(attributes).create
    end

    context 'cnpj' do
      let(:attributes) do
        {
          document_type: '2',
          document_number: document_number
        }.merge(BoaVista::Request::Default::CNPJ)
      end

      context 'with valid document number' do
        let(:document_number) { '43075237000144' }
        let(:expected_layout) { BoaVista::Fixtures.read('layout_138.txt')[0] }

        it 'returns the right response' do
          get :index, { consulta: request_string }
          expect(response.body).to eq(expected_layout)
        end
      end

      context 'with invalid document number' do
        let(:document_number) { '12345678901234' }
        let(:expected_layout) { BoaVista::Fixtures.read('layout_901.txt')[0] }

        it 'returns the right response' do
          get :index, { consulta: request_string }
          expect(response.body).to eq(expected_layout)
        end
      end
    end

    context 'cpf' do
      let(:attributes) do
        {
          document_type: '1',
          document_number: document_number
        }.merge(BoaVista::Request::Default::CPF)
      end

      context 'with valid document number' do
        let(:document_number) { '95711895290' }
        let(:expected_layout) { BoaVista::Fixtures.read('layout_221.txt')[0] }

        it 'returns the right response' do
          get :index, { consulta: request_string }
          expect(response.body).to eq(expected_layout)
        end
      end

      context 'with invalid document number' do
        let(:document_number) { '00001123321' }
        let(:expected_layout) { BoaVista::Fixtures.read('layout_999.txt')[0] }

        it 'returns the right response' do
          get :index, { consulta: request_string }
          expect(response.body).to eq(expected_layout)
        end
      end
    end
  end
end
