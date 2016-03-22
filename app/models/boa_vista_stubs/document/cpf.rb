module BoaVistaStubs
  class Document::Cpf
    include BoaVistaStubs::Document::Extension

    def initialize(document_number)
      @document_number = document_number
    end

    def document_number
      @document_number.slice(3..-1)
    end

    def valid?
      validator(cleared_document_number).valid_cpf?
    end

    def invalid?
      !valid?
    end

    def document_type
      :CPF
    end

    protected

    def cleared_document_number
      @document_number.strip
    end

  end
end
