module BoaVistaStubs
  module DocumentService
    module_function

    def call(search_params)
      # Returns a Document::CPF or Document::CNPJ instance
      document = BoaVistaStubs::Document.identify(search_params)

      log("Start validating document type: #{document.document_type}")

      fail BoaVista::Errors::Timeout.new('timed out') if document.timeout?

      if document.valid?
        log("document number: #{document.document_number} is valid.")

        document_response(document.document_type).valid
      else
        log("document number: #{document.document_number} is invalid.")

        document_response(document.document_type).invalid
      end
    end

    def document_response(document_type)
      BoaVistaStubs::Document::Response.new(document_type)
    end

    def log(message)
      Rails.logger.info("[BoaVistaStubs] - #{message}")
    end

  end
end
