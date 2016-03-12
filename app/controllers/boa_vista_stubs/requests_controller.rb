module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController
    def index
      # Returns a Document::CPF or Document::CNPJ instance
      document = Document.identify(params[:consulta])

      if document.valid?
        decorate(document).valid
      else
        decorate(document).invalid
      end
    end

    def decorate(document)
      # Returns a instance of DocumentDecorator::CPF or DocumentDecorator::CNPJ
      DocumentDecorator.decorate(document)
    end
  end
end
