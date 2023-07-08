Pod::Spec.new do |spec|

  spec.name         = "AutoLayouts"
  spec.version      = "1.0.0"
  spec.summary      = "A short hand of handling constraint UIKit"

  spec.description  = <<-DESC
This CocoaPods library help to config the constraint. The purpose of this package is to ease of constraint management in UIKit
                   DESC

  spec.homepage     = "https://github.com/icungse/AutoLayouts"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "icung" => "saiful-islam@outlook.co.id" }

  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5.8"

  spec.source       = { :git => "https://github.com/icungse/AutoLayouts.git", :tag => "#{spec.version}" }
  spec.source_files  = "AutoLayouts/**/*.{h,m,swift}"

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end