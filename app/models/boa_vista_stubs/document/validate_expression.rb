module BoaVistaStubs
  class Document::ValidateExpression

    def initialize(document_number)
      @document_number = document_number
    end

    def valid_cpf?
      validate_with_regex(BoaVistaStubs.configuration.valid_cpf)
    end

    def valid_cnpj?
      validate_with_regex(BoaVistaStubs.configuration.valid_cnpj)
    end

    def timeout_document?
      validate_with_regex(BoaVistaStubs.configuration.timeout_document)
    end

    protected

    def validate_with_regex(regex)
      @document_number.match(regex)
    end
  end
end
