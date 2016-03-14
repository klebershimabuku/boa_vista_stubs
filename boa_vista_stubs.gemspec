$:.push File.expand_path('../lib', __FILE__)

require 'boa_vista_stubs/version'

Gem::Specification.new do |s|
  s.name        = 'boa_vista_stubs'
  s.version     = BoaVistaStubs::VERSION
  s.authors     = ['Kleber Shimabuku']
  s.email       = ['klebershimabuku@gmail.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of BoaVistaStubs.'
  s.description = 'TODO: Description of BoaVistaStubs.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 3.2.22'
  s.add_dependency 'boa_vista', '~> 0.0.3'
  s.add_dependency 'test-unit', '~> 3.0'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'pry-rails'
end
