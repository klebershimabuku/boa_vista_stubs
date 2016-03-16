module BoaVistaStubs
  module Document::Extension

    def timeout_document?
      validator(document_number).timeout_document?
    end

    protected

    def validator(document_number)
      BoaVistaStubs::Document::ValidateExpression.new(document_number)
    end
  end
end
