#
# Be sure to run `pod lib lint MCSwiftComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MCSwiftComponent'
  s.version          = '0.1.2'
  s.summary          = '摩擦项目组-Swift组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    背景:
        一个系统做成了整块应用，往往随着业务的增长或者变更，系统的复杂度会呈现指数级的增长，经常出现的情况就是一个小小的改动或者一个小功能的增加可能会引起整体逻辑的修改，造成牵一发而动全身。
    目的:
        我们希望一个大且复杂的场景能够被分解成几个小的部分，这些小的部分彼此之间互不干扰，可以单独开发，单独维护，而且他们之间可以随意的进行组合。
    意义:
        1. 为前端提供了很好的分治策略，可以实现独立维护，可维护性强
        2. 组件具有独立性，组件之间可以自由组合
        3. 页面只不过是组件的容器，负责组合组件即可形成功能完整的界面
    原则:
        标准性: 任何一个组件都应该遵守一套标准，可以使得不同区域的开发人员据此标准开发出一套标准统一的组件。
        组合性: 组件之前应该是可以组合的。我们知道页面的展示都是一些VC的组合，而组件也可以理解为一个个的UI代码片段。那么组成一个完整的界面展示，肯定是要依赖不同组件之间的组合，嵌套以及通信。
        重用性: 任何一个组件应该都是一个可以独立的个体，可以使其应用在不同的场景中。
        可维护性: 任何一个组件应该都具有一套自己的完整的稳定的功能，仅包含自身的，与其它组件无关的逻辑，使其更加的容易理解，使其更加的容易理解，同时大大减少发生bug的几率。

                       DESC

  s.homepage         = 'https://github.com/ChengQiRen/SwiftComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '任成' => 'rencheng@mocaapp.cn' }
  s.source           = { :git => 'https://github.com/ChengQiRen/SwiftComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'
  # 基础组件
  s.subspec 'Core' do |core|
    core.dependency 'SnapKit'
  
    core.subspec 'Extension' do |cate|
        cate.source_files = 'MCSwiftComponent/Classes/Core/Extension/*.{swift}'
    end
  
    core.subspec 'Define' do |define|
        define.source_files = 'MCSwiftComponent/Classes/Core/Define/*.{swift}'
    end
  end


  # s.source_files = 'MCSwiftComponent/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MCSwiftComponent' => ['MCSwiftComponent/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
