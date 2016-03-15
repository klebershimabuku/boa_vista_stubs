module BoaVistaStubs
  class Document::CNPJ
    extend BoaVistaStubs::Document::Generic

    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number
    end

    def valid?
      validator(cleared_document_number).valid_cnpj?
    end

    def invalid?
      !valid?
    end

    def document_type
      :CNPJ
    end

    protected

    def allowed
      BoaVistaStubs.configuration.valid_cnpj
    end
  end
end
