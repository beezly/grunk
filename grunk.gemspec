Gem::Specification.new do |s|
  s.name 	= 'grunk'
  s.version	= '0.0.3'
  s.date	= '2013-08-23'
  s.summary	= 'Grep for Splunk'
  s.description = 'Command Line interface to Splunk API'
  s.authors 	= ["Andrew Beresford"]
  s.email	= 'beezly@beez.ly'
  s.executables << 'grunk'
  s.homepage 	= 'http://github.com/beezly/grunk'
  s.add_dependency 'splunk-sdk-ruby', '>= 1.0.2'
  s.add_dependency 'getopt', '>= 1.3.8'
end
