require 'boa_vista_stubs'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  BoaVistaStubs.configure do |config|
    config.valid_cpf  = '95711895290'
    config.valid_cnpj = '43075237000144'
  end
end
