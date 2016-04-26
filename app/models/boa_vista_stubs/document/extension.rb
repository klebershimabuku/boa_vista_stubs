module BoaVistaStubs
  module Document::Extension

    def timeout_document?
      validator(number).timeout_document?
    end

    protected

    def validator(number)
      BoaVistaStubs::Document::ValidateExpression.new(number)
    end
  end
end
