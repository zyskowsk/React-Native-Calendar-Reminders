require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = package['license']
  s.homepage         = package['homepage']
  s.authors          = package['author']
  s.source           = { :git => package['repository']['url'] }
  s.source_files     = '*.{h,m}'
  s.platform         = :ios, "7.0"
  s.dependency         'React'  
end
