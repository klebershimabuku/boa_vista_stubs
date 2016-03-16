module BoaVistaStubs
  class Document
    class Response::CNPJ < Response::Base
      LAYOUTS = {
        valid: 138,
        invalid: 901
      }

      def valid_document
        read_layout(LAYOUT[:valid])
      end

      def invalid_document
        read_layout(LAYOUT[:invalid])
      end
    end
  end
end
