module BoaVistaStubs
  module Document
    class Response

      def self.identify(document_type)
        "BoaVistaStubs::Document::Response::#{document_type.upcase}".constantize
      end
    end
  end
end
