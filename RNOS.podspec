require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name                = 'RNOS'
  s.author              = 'krisz4'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = "https://github.com/krisz4/react-native-os/tree/master/ios"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/krisz4/react-native-os.git' }
  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source_files        = 'ios/**/*.{h,m}'
  s.exclude_files       = 'android/**/*'
  s.exclude_files       = 'example/**/*'
  s.dependency 'React'
end
