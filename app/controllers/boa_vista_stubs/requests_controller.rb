module BoaVistaStubs
  class RequestsController < BoaVistaStubs::ApplicationController
    def index
      request_param = params[:consulta]

      document = document_type[request_param.slice(68..68)] # :cpf or :cnpj

      document_number = request_param.slice(69..82)

      # check if document number is on config valid.
      #
      # valid cpf
      #
      # valid cnpj
      #
      # invalid cpf
      #
      # invalid cnpj
    end

    def document_type(type)
      { '1' => :cpf, '2' => :cnpj }
    end
  end
end
