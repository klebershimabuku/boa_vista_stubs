module BoaVistaStubs
  class Document
    class Response::Cnpj < Response::Base
      LAYOUTS = {
        valid: 138,
        invalid: 901
      }

      def valid_document
        read_layout(LAYOUTS[:valid])
      end

      def invalid_document
        read_layout(LAYOUTS[:invalid])
      end
    end
  end
end
