require 'rails_helper'

RSpec.describe BoaVistaStubs::RequestsController, type: :controller do
  routes { BoaVistaStubs::Engine.routes }

  before do
    allow(BoaVistaStubs::DocumentService).to receive(:call).with(anything) { 'document response' }
  end

  describe 'GET :index' do
    it 'renders document response with success' do
      get :index, consulta: 'my search string'
      expect(response.body).to eq('document response')
    end
  end
end
