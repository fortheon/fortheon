require File.expand_path('../lib/fortheon/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'fortheon'
  s.version       = Fortheon::VERSION
  s.date          = '2014-08-02'
  s.summary       = "Fortheon's Command Line"
  s.description   = "This is Fortheon's command line tool that allows developers to interact with Fortheon services directly from their terminal."
  s.authors       = ["Michael Scaria, Robin Joseph"]
  s.email         = 'michael@fortheon.com'
  s.homepage      = 'https://github.org/fortheon/fortheon'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.license       = 'MIT'

  s.metadata['allowed_push_host'] = 'https://gems.fortheon.com'

  s.add_runtime_dependency 'thor',         '~> 0.19'
  s.add_runtime_dependency 'rest-client',  '~> 1.7'
  s.add_runtime_dependency 'json',         '~> 1.8'

  s.add_development_dependency 'rspec', '~> 2.8'
end