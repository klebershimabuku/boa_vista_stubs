module BoaVistaStubs
  class Document::CNPJ
    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number
    end

    def valid?
      allowed.include?(@document_number)
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
