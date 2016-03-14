module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController
    def index
      # Returns a Document::CPF or Document::CNPJ instance
      document = Document.identify(params[:consulta])

      log("Start validating document type: #{document.document_type}")

      if document.valid?
        log("document number: #{document.document_number} is valid.")
        render text: document_response(document.document_type).valid
      else
        log("document number: #{document.document_number} is invalid.")
        render text: document_response(document.document_type).invalid
      end
    end

    protected

    def document_response(document_type)
      Document::Response.new(document_type)
    end

    def log(message)
      Rails.logger.info("[BoaVistaStubs] - #{message}")
    end
  end
end
