module BoaVistaStubs
  class Document::Cnpj
    include BoaVistaStubs::Document::Extension

    def initialize(document_number)
      @document_number = document_number
    end

    def number
      @document_number
    end

    def valid?
      validator(number).valid_cnpj?
    end

    def invalid?
      !valid?
    end

    def document_type
      :CNPJ
    end

  end
end
