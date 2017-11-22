#
# Be sure to run `pod lib lint Toast.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Toast-Swift-Android-Like'
  s.version          = '0.1.1'
  s.summary          = '仿照安卓系统Toast的写法完成的一个属于iOS系统并且比较好扩展的通用Toast组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
请注意，本组件编写的初衷是作者比较欣赏安卓Toast的设计思路，并不代表在iOS平台上就绝对适合，编写过程中也由于java、OC和Swift的语言习惯不同而取其精华去其糟粕完成，另外作者强烈建议使用时再次封装成更方便使用的定制组件(如链式调用或者类方法调用、分类调用)，欢迎喜欢OOP的同学指出代码中不合理的地方。
                       DESC

  s.homepage         = 'https://github.com/LINAICAI/Toast-Swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nice' => 'linaicai2012@gmail.com' }
  s.source           = { :git => 'https://github.com/LINAICAI/Toast-Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Toast/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Toast' => ['Toast/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit', 'Foundation'
s.dependency 'SnapKit', '~> 4.0.0'
end
