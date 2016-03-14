module BoaVistaStubs
  class Document::CPF
    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number.slice(3..-1)
    end

    def valid?
      allowed.include?(@document_number)
    end

    def invalid?
      !valid?
    end

    def document_type
      :CPF
    end

    protected

    def allowed
      BoaVistaStubs.configuration.valid_cpf
    end
  end
end
