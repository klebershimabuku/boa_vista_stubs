module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController
    def index
      render text: params[:consulta]
    end
  end
end
