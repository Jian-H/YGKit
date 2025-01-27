#
# Be sure to run `pod lib lint YGKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YGKit'
  s.version          = '0.1.1'
  s.summary          = 'YGKit'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  YGKit解决开发过程中遇到的一切问题，什么问题都能解决，只要你用它！
                       DESC

  s.homepage         = 'https://www.baidu.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jian-H' => '1026643065@qq.com' }
  s.source           = { :git => 'https://github.com/Jian-H/YGKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'YGKit/Classes/**/*'
  s.dependency 'lottie-ios'
  
  # s.subspec 'YGLottie' do |ss|
  #   ss.source_files = 'YGKit/Classes/YGLottie/**/*.{swift}'
      
  # Lottie
  #   ss.dependency 'lottie-ios'
  #end
  
  # s.resource_bundles = {
  #   'YGKit' => ['YGKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
