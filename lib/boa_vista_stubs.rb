require 'boa_vista_stubs/engine'
require 'boa_vista_stubs/configuration'

require 'boa_vista'
require 'boa_vista/fixtures'

module BoaVistaStubs
  class << self
    attr_reader :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
