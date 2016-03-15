module BoaVistaStubs
  class Document::CPF
    include BoaVistaStubs::Document::Extension

    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number
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
