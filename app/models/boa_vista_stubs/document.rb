module BoaVistaStubs
  class Document

    TYPES = {
      '1' => :CPF,
      '2' => :CNPJ
    }.freeze

    def self.identify(consulta_params)
      new(consulta_params).identify
    end

    attr_reader :consulta_params

    def initialize(consulta_params)
      @consulta_params = consulta_params
    end

    def identify
      klass = "BoaVistaStubs::Document::#{document_type}".constantize

      klass.new(document_number)
    end

    protected

    def document_number
      @consulta_params.slice(69..82)
    end

    def document_type
      TYPES[@consulta_params.slice(68..68)]
    end

  end
end
