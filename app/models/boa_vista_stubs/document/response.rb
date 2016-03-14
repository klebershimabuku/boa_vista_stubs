module BoaVistaStubs
  class Document::Response
    LAYOUTS = {
      :CPF  => {
        valid: 221,
        invalid: 999
      },
      :CNPJ => {
        valid: 138,
        invalid: 901
      }
    }

    def initialize(document_type)
      @document_type = document_type
      @layout        = LAYOUTS[@document_type]
    end

    def valid
      log("Layout: #{@layout[:valid]}")
      BoaVista::Fixtures.read("layout_#{@layout[:valid]}.txt")[0]
    end

    def invalid
      log("Layout: #{@layout[:invalid]}")
      BoaVista::Fixtures.read("layout_#{@layout[:invalid]}.txt")[0]
    end

    protected

    def log(message)
      Rails.logger.info("[BoaVistaStubs] - #{message}")
    end
  end
end
