module BoaVistaStubs
  class Document
    class Response::CPF < Response::Base
      LAYOUTS = {
        valid: 221,
        invalid: 999
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
