#
# Be sure to run `pod lib lint WLObjCKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WLObjCKit'
  s.version          = '0.0.5.4'
  s.summary          = '一个实用的 Objective-C 开发工具包'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/0624pdy/WLObjCKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '0624pdy@sina.com' => 'pengduanyang@jze100.com' }
  s.source           = { :git => 'https://github.com/0624pdy/WLObjCKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'WLObjCKit/Classes/*.{h}'
  
  # s.resource_bundles = {
  #   'WLObjCKit' => ['WLObjCKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  
  #MARK: 基础框架
  s.subspec 'WLFoundation' do |s1|
      s1.source_files = 'WLObjCKit/Classes/WLFoundation/*'
      s1.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
  end
  
  #MARK: 网络请求
  s.subspec 'WLNetworking' do |s2|
      s2.source_files = 'WLObjCKit/Classes/WLNetworking/*'
      s2.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
      s2.dependency 'AFNetworking'
  end
  
end
