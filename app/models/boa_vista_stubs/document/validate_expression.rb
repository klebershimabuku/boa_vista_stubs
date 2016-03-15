module BoaVistaStubs
  class Document::ValidateExpression
    def initialize(document_number)
      @document_number = document_number
    end

    def valid_cpf?
      call(BoaVistaStubs.configuration.valid_cpf)
    end

    def valid_cnpj?
      call(BoaVistaStubs.configuration.valid_cpf)
    end

    def timeout?
      call(BoaVistaStubs.configuration.valid_cpf)
    end

    private
    def call(regex)
      @document_number.match(regex)
    end
  end
end
