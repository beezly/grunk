Gem::Specification.new do |s|
  s.name 	= 'grunk'
  s.version	= '0.0.1'
  s.date	= '2012-04-24'
  s.summary	= 'Grep for Splunk'
  s.description = 'Command Line interface to Splunk API'
  s.authors 	= ["Andrew Beresford"]
  s.email	= 'beezly@beez.ly'
  s.executables << 'grunk'
  s.homepage 	= 'http://github.com/beezly/grunk'
  s.add_dependency 'ruby-splunk', '>= 0.0.4'
end
