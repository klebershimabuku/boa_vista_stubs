module BoaVistaStubs
  class DocumentService
    class Sleep
      def self.invoke
        sleep(timeout_seconds_required)
      end

      def self.timeout_seconds_required
        BoaVista.configuration.timeout + 1
      end
    end
  end
end
