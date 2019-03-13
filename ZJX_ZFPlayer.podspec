#
#  Be sure to run `pod spec lint ZJX_ZFPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
s.name             = 'ZJX_ZFPlayer'
    s.version          = '3.2.6'
    s.summary          = 'A short description of ZJX_ZFPlayer.'
    s.homepage         = 'https://github.com/renzifeng/ZFPlayer'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    spec.author             = { 'zhoujiaxing' => 'zhoujiaxing@huizhaofang.com' }
    s.source           = { :git => 'https://github.com/oldBlackComing/ZJX_ZFPlayer.git', :tag => s.version.to_s }
    s.social_media_url = 'http://weibo.com/zifeng1300'
    s.ios.deployment_target = '7.0'
    s.requires_arc = true
    
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |core|
        core.source_files = 'ZFPlayer/Classes/Core/**/*'
        core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
        core.frameworks = 'UIKit', 'MediaPlayer', 'AVFoundation'
    end
    
    s.subspec 'ControlView' do |controlView|
        controlView.source_files = 'ZFPlayer/Classes/ControlView/**/*.{h,m}'
        controlView.public_header_files = 'ZFPlayer/Classes/ControlView/**/*.h'
        controlView.resource = 'ZFPlayer/Classes/ControlView/ZFPlayer.bundle'
        controlView.dependency 'ZFPlayer/Core'
    end
    
    s.subspec 'AVPlayer' do |avPlayer|
        avPlayer.source_files = 'ZFPlayer/Classes/AVPlayer/**/*.{h,m}'
        avPlayer.public_header_files = 'ZFPlayer/Classes/AVPlayer/**/*.h'
        avPlayer.dependency 'ZFPlayer/Core'
    end
    
    s.subspec 'ijkplayer' do |ijkplayer|
        ijkplayer.source_files = 'ZFPlayer/Classes/ijkplayer/*.{h,m}'
        ijkplayer.public_header_files = 'ZFPlayer/Classes/ijkplayer/*.h'
        ijkplayer.dependency 'ZFPlayer/Core'
        ijkplayer.dependency 'IJKMediaFramework'
        ijkplayer.ios.deployment_target = '8.0'
    end
    
    s.subspec 'KSYMediaPlayer' do |ksyMediaPlayer|
        ksyMediaPlayer.source_files = 'ZFPlayer/Classes/KSYMediaPlayer/*.{h,m}'
        ksyMediaPlayer.public_header_files = 'ZFPlayer/Classes/KSYMediaPlayer/*.h'
        ksyMediaPlayer.dependency 'ZFPlayer/Core'
        ksyMediaPlayer.dependency 'KSYMediaPlayer'
        ksyMediaPlayer.pod_target_xcconfig = {
            'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
        }
    end


end
