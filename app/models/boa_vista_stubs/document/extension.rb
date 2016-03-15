module BoaVistaStubs
  module Document::Extension

    def timeout?
      validator(document_number).timeout?
    end

    protected

    def validator(document_number)
      BoaVistaStubs::Document::ValidateExpression.new(document_number)
    end
  end
end
