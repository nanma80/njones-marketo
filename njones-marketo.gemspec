# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name        = "njones-marketo"
  gem.summary     = "A client for using the marketo API"
  gem.description = <<-EOF
     A Fork of the Rapleaf marketo-gem. Once the updates in the gem are merged into that one, you should use that.

    Allows easy integration with marketo from ruby. You can synchronize leads (multiple leads too) and fetch them back by email. This is based on the SOAP wsdl file: http://app.marketo.com/soap/mktows/1_7?WSDL (by default, but you can change on the fly). More information at https://www.rapleaf.com/developers/marketo. And look to https://github.com/njones/marketo_gem/tree/njones-marketo for updates.
  EOF
  gem.email        = "njones@appcelerator.com"
  gem.authors      = ["James O'Brien (orginal author)", "Nika Jones"]
  gem.homepage     = "https://github.com/njones/marketo_gem"
  gem.files         = `git ls-files`.split($/)
  gem.require_path = ['lib']
  gem.test_files   = Dir['spec/**/*_spec.rb']
  gem.version      = "1.2.5"
  gem.has_rdoc     = true
  gem.rdoc_options << '--title' << 'Marketo Client Gem' << '--main' << 'Rapleaf::Marketo::Client'

  gem.add_development_dependency('rspec', '>= 2.3.0')
  gem.add_dependency('savon', '~> 0.8.3')
end
