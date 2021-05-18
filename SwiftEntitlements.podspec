Pod::Spec.new do |s|
  s.name             = 'SwiftEntitlements'
  s.version          = '0.1.1'
  s.summary          = 'A simple Swift utility package that reads application entitlements.'
  s.description      = 'SwiftEntitlements is a Swift package that helps you with decoding application entitlements. It reads them from the binary and makes them accessible as an extension on UIApplication.'
  s.homepage         = 'https://github.com/matrejek/SwiftEntitlements'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mateusz Matrejek' => 'mateusz@matrejek.eu' }
  s.source           = { :git => 'https://github.com/matrejek/SwiftEntitlements.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  s.source_files = 'Sources/SwiftEntitlements/*.swift'
end
