module BoaVistaStubs
  module Document
    class Response::Base

    def read_layout(layout)
      BoaVista::Fixtures.read("layout_#{layout}.txt")[0]
    end

    def log(message)
      Rails.logger.info("[BoaVistaStubs] - #{message}")
    end
  end
end
