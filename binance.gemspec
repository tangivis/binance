lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'binance/version'

Gem::Specification.new do |spec|
  spec.name          = 'binance'
  spec.version       = Binance::VERSION
  spec.authors       = ['Charles Ray Shisler III']
  spec.email         = ['charles@cray.io']

  spec.summary       = 'API Wrapper for the Binance cryptocurrency exchange.'
  spec.homepage      = 'https://github.com/craysiii/binance'
  spec.license       = 'MIT'

  spec.files         = Dir['bin/*'] +
                       Dir['lib/**/*.rb']

  spec.require_paths = ['lib']

  spec.bindir        = 'bin'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'faraday_middleware'
  spec.add_runtime_dependency 'faye-websocket'
end
