# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-racism_terminology-check'
  spec.version     = '1.0.2'
  spec.homepage    = 'https://github.com/tskirvin/puppet-lint-racism_terminology-check'
  spec.license     = 'MIT'
  spec.author      = 'Tim Skirvin'
  spec.email       = 'tskirvin@fnal.gov'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*'
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint racism terminology check'
  spec.description = <<-DESC
    A puppet-lint extension that warns when you use racist terminology
    in your code.  Starting terms: whitelist, blacklist, master, slave
  DESC

  spec.add_dependency 'puppet-lint', '>= 1.1', '< 5.0'
  spec.add_dependency 'uri', '~> 0.10.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'rubocop', '~> 0.85.0'
  spec.add_development_dependency 'simplecov', '~> 0.18.0'
  spec.add_development_dependency 'uri'
end
