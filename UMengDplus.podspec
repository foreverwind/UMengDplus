Pod::Spec.new do |s|

  s.name          = 'UMengDplus'
  s.version       = '4.0.4'
  s.summary       = 'UMengDplus framework'
  s.homepage      = 'https://github.com/foreverwind/UMengDplus'
  s.author        = { 'foreverwind' => 'foreverwind229@qq.com' }
  s.platform      = :ios, '7.0'
  s.license = 'MIT'
  s.source        = {
    :git => 'https://github.com/foreverwind/UMengDplus.git',
  }
  
  s.subspec 'MobClickInOne' do |mob|
    mob.vendored_frameworks = "MobClickInOne.framework"
    mob.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/UMengDPlus/"' }
    mob.framework = 'CoreTelephony', 'Security'
    mob.requires_arc = false
  end
  s.subspec 'UTDID' do |utdid|
    utdid.vendored_frameworks = "UTDID.framework"
    utdid.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/UMengDPlus/"' }
    utdid.framework = 'CoreTelephony', 'Security'
    utdid.requires_arc = false
  end
end