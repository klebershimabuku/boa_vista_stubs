module BoaVistaStubs
  class Document::CPF
    attr_reader :document_number

    def initialize(document_number)
      @document_number = document_number
    end

    def valid?
      allowed.include?(clear_empty_spaces(@document_number))
    end

    def invalid?
      !valid?
    end

    def document_type
      :CPF
    end

    protected

    def clear_empty_spaces(document_number)
      document_number.strip
    end

    def allowed
      BoaVistaStubs.configuration.valid_cpf
    end
  end
end
