# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_enum/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_enum'
  spec.version       = RubyEnum::VERSION.to_s
  spec.authors       = ['Lefteris Laskaridis']
  spec.email         = ['l.laskaridis@pamediakopes.gr']

  spec.summary       = 'Simple enumeration type for ruby'
  spec.description   = 'Implementation of a simple enumeration type for ruby'
  spec.homepage      = 'https://github.com/laskaridis/ruby_enum'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 7'
  spec.add_dependency 'railties', '~> 7'

  spec.add_development_dependency 'activemodel', '~> 7'
  spec.add_development_dependency 'activerecord', '~> 7'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'sqlite3'

  spec.required_ruby_version = '>= 3.2.2'
end
