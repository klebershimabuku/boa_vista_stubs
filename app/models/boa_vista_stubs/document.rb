module BoaVistaStubs
  class Document

    TYPES = {
      '1' => :CPF,
      '2' => :CNPJ
    }.freeze

    def self.identify(search_params)
      new(search_params).identify
    end

    def initialize(search_params)
      @search_params = search_params
    end

    def identify
      klass = "BoaVistaStubs::Document::#{document_type}".constantize

      klass.new(document_number)
    end

    protected

    def document_number
      @search_params.slice(69..82)
    end

    def document_type
      TYPES[@search_params.slice(68..68)]
    end

  end
end
