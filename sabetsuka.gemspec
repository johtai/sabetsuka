#require File.expand_path('lib/sabetsuka/version', __dir__)
require_relative 'lib/sabetsuka/version'

Gem::Specification.new do |spec|
  spec.name        = 'sabetsuka'
  spec.version     = Sabetsuka::VERSION
  spec.authors     = ['johtai', 'Tempire', 'ompus']
  spec.summary     = 'differentiate polynomials'
  spec.description = 'Sabetsuka (差別化) makes it easy and painless to differentiate polynomials'
  spec.homepage    = 'https://github.com/johtai/sabetsuka'
  spec.license     = 'MIT'
  spec.files       = Dir['lib/sabetsuka.rb', 'lib/sabetsuka/*.rb', 'README.md',
                         'LICENSE', 'Gemfile', 'Rakefile', 'bin/*', 'sabetsuka.gemspec',
                         'CHANGELOG.md', 'test/*.rb']
end