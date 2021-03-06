module BoaVistaStubs
  class DocumentService

    def self.call(search_params)
      # Returns a Document::CPF or Document::CNPJ instance
      document = BoaVistaStubs::Document.identify(search_params)

      BoaVistaStubs::DocumentService::Sleep.invoke if document.timeout_document?

      # Returns a Document::Response::CPF or Document::Response::CNPJ
      response = BoaVistaStubs::Document::Response.identify(document.document_type).new

      if document.valid?
        # renders valid response for specific type of document
        response.valid_document
      else
        # renders invalid response for specific type of document
        response.invalid_document
      end
    end
  end
end
