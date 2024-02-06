#
#  Be sure to run `pod spec lint YMTVersionAlert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|
s.name         = "YMTGetDeviceName"
s.version      = "5.6.1"
s.summary      = "Get device name from model number"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.homepage     = "https://github.com/MasamiYamate/YMTGetDeviceName.git"
s.author       = { "MasamiYamate" => "yamate.inquiry@mail.yamatte.net" }
s.source       = { :git => "https://github.com/MasamiYamate/YMTGetDeviceName.git", :tag => "#{s.version}" }
s.platform     = :ios, "12.0"
s.requires_arc = true
s.source_files = 'Sources/**/*.{swift}'
s.resource_bundles = { "YMTGetDeviceName" => ["Sources/PrivacyInfo.xcprivacy"] }
s.swift_versions = ['5.0']
end
