module BoaVistaStubs
  class Document::CPF << Document
    def initialize(document_number)
      @document_number = document_number
    end

    def valid?
      allowed.include?(@document_number)
    end

    def invalid?
      !valid?
    end

    protected

    def allowed
      BoaVistaStubs.configuration.valid_cpj
    end
  end
end
