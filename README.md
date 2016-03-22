# BoaVistaStubs [![Build Status](https://travis-ci.org/klebershimabuku/boa_vista_stubs.svg?branch=master)](https://travis-ci.org/klebershimabuku/boa_vista_stubs)[![Gem Version](https://badge.fury.io/rb/boa_vista_stubs.svg)](https://badge.fury.io/rb/boa_vista_stubs) [![Code Climate](https://codeclimate.com/github/klebershimabuku/boa_vista_stubs/badges/gpa.svg)](https://codeclimate.com/github/klebershimabuku/boa_vista_stubs)

Rails Engine to generate stub requests for BoaVista (SCPC)

## Features:
* Dead-simple to use
* Tested


## Installation:

Add this to your Gemfile.
```ruby
gem 'boa_vista_stubs'
````
and run:

`$ bundle install` in the console to install the gem in your rails project.

## Getting Started


### Configuration:

Create an `config/initializers/boa_vista_stubs.rb` file with the following content:

```ruby
BoaVistaStubs.configure do |config|
  config.valid_cpf = /^3/
  config.valid_cnpn = /^4/
  config.timeout_document = /^6/
end
```

The BoaVistaStubs will evaluate the document number informed in the query string to allow or deny according this configuration. It also cause to return an timeout if the document number matches with the config file.

### Usage:
Mount the engine in yout `config/routes.rb` file and you are ready to go.

Example:
```ruby
mount BoaVistaStubs::Engine => '/boa_vista_stubs'
```

At this point you can now point to the following url:
`http://localhost:3000/boa_vista_stubs/stub/consulta=YOUR_QUERY_STRING_HERE`instead of use the url informed in the BoaVista documentation.

So, depending on your query string it will return an CPF layout document or an CNPJ layout document.

As expected if you inform an invalid document number an error layout will be returned.

#### Contributors
* [Kleber Shimabuku](https://github.com/klebershimabuku)
* [Gabriel Souza](https://github.com/gabrielmalakias)
