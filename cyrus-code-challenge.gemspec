require "lib/cyrus-code-challenge/version"
Gem::Specification.new do |spec|
  spec.name        = 'cyrus-code-challenge'
  spec.version     = CyrusCodeChallenge::VERSION
  spec.licenses    = ['MIT']
  spec.summary     = "My solution for the cyrus-code-challenge, packaged into a CLI gem."
  spec.author      = ["Brennen Awana"]
  spec.email       = 'brennenawana108ny@gmail.com'
  spec.files       = (Dir['lib/*.rb'] + Dir['lib/cyrus-code-challenge/*.rb'] + Dir['lib/input_file/*.txt'] + Dir['bin/*']).to_a
  spec.executables   = ["cyrus-code-challenge"]
  spec.homepage    = 'https://github.com/the-widget/code-challenge'
end