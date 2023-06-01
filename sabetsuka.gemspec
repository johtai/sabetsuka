#require File.expand_path('lib/sabetsuka/version', __dir__)


Gem::Specification.new do |spec|
  spec.name        = 'sabetsuka'
  spec.version     = '1.1.0'
  spec.authors     = ['johtai', 'Tempire', 'ompus']
  spec.summary     = 'differentiate polynomials'
  spec.description = 'Sabetsuka (差別化) makes it easy and painless to differentiate polynomials'
  spec.homepage    = 'https://github.com/johtai/sabetsuka'
  spec.license     = 'MIT'
  spec.files       = Dir['README.md', 'LICENSE', 'lib/**/*.rb',
                   'lib/*.rb', 'Gemfile', 'Rakefile',
                   'sabetsuka.gemspec', 'main.rb']

  # spec.files = ["lib/main.rb"]

end