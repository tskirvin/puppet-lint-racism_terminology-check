Gem::Specification.new do |spec|
  spec.name = 'puppet-lint-racism_terminology-check'
  spec.version = '1.0.0'
  spec.homepage = 'https://github.com/tskirvin/puppet-lint-racism_terminology-check'
  spec.license = 'MIT'
  spec.author = 'Tim Skirvin'
  spec.email = 'tskirvin@fnal.gov',
  spec.files = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*'
  ]
  spec.test_files = Dir['spec/**/*']
  spec.summary = 'puppet-lint racism terminology check'
  spec.description = <<-EOF
    A puppet-lint extension that warns when you use racist terminology
    in your code.  Starting terms: whitelist, blacklist, master, slave
  EOF

  spec.add_dependency 'puppet-lint', '>= 1.1', '< 3.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'rubocop', '~> 0.85.0'
  spec.add_development_dependency 'simplecov', '~> 0.18.0'

end
