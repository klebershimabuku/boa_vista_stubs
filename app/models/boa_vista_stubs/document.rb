module BoaVistaStubs
  class Document

    def self.identify(search_params)
      new(search_params).identify
    end

    def initialize(search_params)
      @search_params = search_params
    end

    def identify
      document = build_document

      klass = "BoaVistaStubs::Document::#{document_type_by_document(document)}".constantize

      klass.new(document.document_number)
    end

    protected

    def build_document
      BoaVista::Request.read(@search_params)
    end

    def document_type_by_document(document)
      BoaVista::Request.document_name(document.document_type).to_s.camelize # :cpf or :cnpj
    end
  end
end
