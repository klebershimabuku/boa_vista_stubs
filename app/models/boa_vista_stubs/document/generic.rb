module BoaVistaStubs
  class Document::Generic
    def validator(document_number)
      ValidateExpression.new(document_number)
    end

    def timeout?
      validator(document_number).timeout?
    end
  end
end
