module BoaVistaStubs
  class DocumentService::Timeout
    def self.invoke
      fail(BoaVista::Errors::Timeout)
    end
  end
end
