Pod::Spec.new do |s|
  s.name = 'SwiftSovereignStates'
  s.version = '1.0.2'
  s.summary = 'Highly performant Swift library used to implement Sovereign States, Subdivisions, and other relevant information into your Swift projects.'
  s.homepage = 'https://github.com/RandomHashTags/swift-sovereign-states'
  s.licenses = { :type => 'CC0 1.0 Universal', :file => 'LICENSE.txt' }
  s.authors = { 'Evan Anderson' => 'imrandomhashtags@gmail.com' }
  s.social_media_url = 'https://twitter.com/irandomhashtags'
  s.ios.deployment_target = '13.0'
  s.tvos.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.source = { :git => 'https://github.com/RandomHashTags/swift-sovereign-states.git', :tag => 'v#{s.version}' }
  s.swift_versions = ['5.6', '5.7']
  s.cocoapods_version = '>= 1.5.0'
  s.source_files = 'Sources/**/*'
end
