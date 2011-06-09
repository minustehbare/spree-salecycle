Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_salecycle'
  s.version     = '0.50.99'
  s.summary     = 'An extension for a pre-configured implementation of the SaleCycle service.'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'minustehbare'
  s.email             = 'minustehbare@gmail.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.50.99')
end
