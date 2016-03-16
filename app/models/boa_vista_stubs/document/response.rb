module BoaVistaStubs
  class Document
    class Response

      def self.identify(document_type)
        "BoaVistaStubs::Document::Response::#{formatted_document_type(document_type)}".constantize
      end

      def self.formatted_document_type(document_type)
        document_type.upcase.to_s
      end
    end
  end
end
