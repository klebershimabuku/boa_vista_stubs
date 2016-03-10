require 'rails_helper'

RSpec.describe BoaVistaStubs::RequestsController, type: :controller do
  routes { BoaVistaStubs::Engine.routes }

  describe 'GET :index' do
    context 'cnpj' do
      let(:attributes) do
        {
          document_type: '2',
          document_number: '43075237000144'
        }.merge(BoaVista::Request::Default::CNPJ)
      end

      let(:request_string) do
        BoaVista::Request.new(attributes).create
      end

      context 'with valid document number' do
        let(:expected_layout) { BoaVista::Fixtures.read('layout_138.txt') }

        it 'returns the right response' do
          get :index, { consulta: request_string }

          expect(response.body).to eq(expected_layout)
        end
      end

      context 'with invalid document number' do
      end
    end

    context 'cpf' do
    end
  end
end
