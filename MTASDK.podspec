#
# Be sure to run `pod lib lint MTASDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTASDK'
  s.version          = '2.0.2'
  s.summary          = 'Tencent MTA SDK for iOS to access Tencent MTA platform.'

  s.description      = 'Tencent does not have an official pod for their MTA SDK. Therefore, we create this pod to track the official MTA iOS SDK.'

  s.homepage         = 'http://mta.qq.com/mta/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iCell' => 'xiaoyu.li@shanbay.com' }
  s.source           = { :git => 'https://github.com/iCell/BayMTASDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'MTASDK/*.{h,m}'
  s.vendored_libraries = 'MTASDK/*.a'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'Security', 'CFNetwork'
  s.libraries = 'z', 'sqlite3'
  s.pod_target_xcconfig  = {
    'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/MTASDK", 
    'OTHER_LDFLAGS' => '-lMTASDK'
  }
end
