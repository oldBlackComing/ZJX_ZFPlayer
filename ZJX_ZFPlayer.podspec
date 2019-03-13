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
    spec.author             = { "zhoujiaxing" => "zhoujiaxing@huizhaofang.com" }
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


  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  #spec.name         = "ZJX_ZFPlayer"
  #spec.version      = "0.0.1"
  #spec.summary      = "A short description of ZJX_ZFPlayer."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
                   DESC

  #spec.homepage     = "http://EXAMPLE/ZJX_ZFPlayer"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #spec.license      = "MIT (example)"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  #spec.author             = { "zhoujiaxing" => "zhoujiaxing@huizhaofang.com" }
  # Or just: spec.author    = "zhoujiaxing"
  # spec.authors            = { "zhoujiaxing" => "zhoujiaxing@huizhaofang.com" }
  # spec.social_media_url   = "https://twitter.com/zhoujiaxing"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  #spec.source       = { :git => "http://EXAMPLE/ZJX_ZFPlayer.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
