#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'fl_amap'
  s.version          = '3.4.5'
  s.summary          = 'A Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'https://www.ifansum.com/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'developer@ifansum.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
 # s.dependency 'AMapLocation'
  # 引入本地 framework
  s.ios.vendored_frameworks = 'Frameworks/AMapFoundationKit.framework', 'Frameworks/AMapLocationKit.framework'
  s.static_framework = true
  s.platform = :ios, '12.0'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

end

