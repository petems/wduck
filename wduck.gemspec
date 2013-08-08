# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','wduck','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'wduck'
  s.version = Wduck::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/wduck
lib/wduck/version.rb
lib/wduck.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','wduck.rdoc']
  s.rdoc_options << '--title' << 'wduck' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'wduck'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('httpclient')
  s.add_development_dependency('htmlentities')
  s.add_development_dependency('rainbow')
  s.add_runtime_dependency('gli','2.7.0')
end