Pod::Spec.new do |s|
  s.name = 'SwiftSovereignStates'
  s.version = '1.2.1'
  s.summary = 'Sovereign States, Subdivisions, and other relevant information to use in your Swift projects.'
  s.homepage = 'https://github.com/RandomHashTags/swift-sovereign-states'
  s.license = { :type => 'CC0 1.0 Universal', :file => 'LICENSE.txt' }
  s.authors = { 'Evan Anderson' => 'imrandomhashtags@gmail.com' }
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.source = { :git => 'https://github.com/RandomHashTags/swift-sovereign-states.git', :tag => s.version.to_s }
  s.swift_versions = ['5.6', '5.7']
  s.cocoapods_version = '>= 1.5.0'
  s.source_files = 'Sources/**/*'
end
