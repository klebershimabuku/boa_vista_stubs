module BoaVistaStubs
  class DocumentService::Timeout
    def self.invoke
      sleep(BoaVista.configuration.timeout + 1)
    end
  end
end
