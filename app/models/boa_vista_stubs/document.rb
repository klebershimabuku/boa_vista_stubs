module BoaVistaStubs
  class Document
    TYPES = {
      '1' => :cpf,
      '2' => :cnpj
    }.freeze

    def self.identify(consulta_params)
      new(consulta_params).identify
    end

    def identify
      klass = "BoaVistaStubs::Document::#{document_type}".constantize

      klass.new(document_number)
    end

    attr_reader :consulta_params

    def initialize(consulta_params)
      @consulta_params = consulta_params
    end

    def document_number
      consulta_params.slice(69..82)
    end

    def document_type
      TYPES[params.slice(68..68)]
    end

    def valid?
      fail 'Not implemented error'
    end

    def invalid?
      fail 'Not implemented error'
    end
  end
end
