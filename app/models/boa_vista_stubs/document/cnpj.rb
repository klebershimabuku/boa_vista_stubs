module BoaVistaStubs
  class Document::Cnpj
    include BoaVistaStubs::Document::Extension

    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number
    end

    def valid?
      validator(document_number).valid_cnpj?
    end

    def invalid?
      !valid?
    end

    def document_type
      :CNPJ
    end

  end
end
