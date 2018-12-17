Pod::Spec.new do |s|
    
    s.name                       = 'JhtGuidePages'
    s.version                    = '1.0.0'
    s.summary                    = '引导页/首次安装引导页/渐变引导页/APP介绍页/功能介绍页'
    s.homepage                   = 'https://github.com/jinht/GuidePages'
    s.license                    = { :type => 'MIT', :file => 'LICENSE' }
    s.author                     = { 'Jinht' => 'jinjob@icloud.com' }
    s.social_media_url           = 'https://blog.csdn.net/Anticipate91'
    s.platform                   = :ios
    s.ios.deployment_target      = '8.0'
    s.source                     = { :git => 'https://github.com/jinht/GuidePages.git', :tag => s.version }
    s.resource                   = 'JhtGuidePages_SDK/skip_button.bundle'
    s.ios.vendored_frameworks    = 'JhtGuidePages_SDK/JhtGuidePages.framework'
    s.frameworks                 = 'UIKit'

end
