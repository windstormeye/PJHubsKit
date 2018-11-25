#
# Be sure to run `pod lib lint PJHubsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PJHubsKit'
  s.version          = '0.0.1'
  s.summary          = 'PJHubsKit include UIKit, ToolKit, etc.'
  s.description      = 'PJHubsKit is a base framework for iOS, include UIKit, ToolKit, etc.'

  s.homepage         = 'https://github.com/windstormeye/PJHubsKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'windstormeye' => '877302410@qq.com' }
  s.source           = { :git => 'https://github.com/windstormeye/PJHubsKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'PJHubsKit/Classes/**/*'
  s.swift_version = '4.2'
end
