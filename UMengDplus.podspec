Pod::Spec.new do |s|

  s.name          = 'UMengDplus'
  s.version       = '4.0.4'
  s.summary       = 'UMengDplus framework'
  s.homepage      = 'https://github.com/foreverwind/UMengDplus'
  s.author        = { 'foreverwind' => 'foreverwind229@qq.com' }
  s.platform      = :ios, '7.0'
  s.license = 'MIT'
  s.source        = {
    :http => 'https://raw.githubusercontent.com/foreverwind/UMengDplus/master/umsdk_IOS_analyics_idfa_v4.0.4.zip',
  }
  s.preserve_paths = "umsdk_IOS_analyics_idfa_v4.0.4/*"
  s.subspec 'MobClickInOne' do |mob|
    mob.vendored_frameworks = 'MobClickInOne.framework/*'
    mob.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/UMengDPlus/MobClickInOne"' }
    mob.framework = 'CoreTelephony', 'Security'
    mob.requires_arc = false
  end

end