module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController

    def index
      document = BoaVistaStubs::DocumentService.call(params[:consulta])
      render text: document
    end

  end
end
