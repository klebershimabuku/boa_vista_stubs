module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController
    def index
      # Returns a Document::CPF or Document::CNPJ instance
      document = Document.identify(params[:consulta])

      if document.valid?
        document_response(document).valid
      else
        document_response(document).invalid
      end
    end

    def document_response(document)
      # Returns a instance of DocumentDecorator::CPF or DocumentDecorator::CNPJ
      Document::Response.new(document)
    end
  end
end
