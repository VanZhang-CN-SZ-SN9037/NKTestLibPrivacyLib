#
#  Be sure to run `pod spec lint NKTestLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "NKTestLibPrivacyLib"
  spec.version      = "0.3.0"
  spec.summary      = "This is a Pod Lib Demo for blog."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "一般描述库的用途、主要功能等"

  spec.homepage     = "https://github.com/VanZhang-CN-SZ-SN9037/NKTestLib"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = { :type => "MIT", :file => "./LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Van Zhang" => "toBeABetterManZxh91@gmail.com" }
  # Or just: spec.author    = "Van Zhang"
  # spec.authors            = { "Van Zhang" => "Van.Zhang@nike.com" }
  # spec.social_media_url   = "https://twitter.com/Van Zhang"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

   spec.platform     = :ios, "14.0"
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "14.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  spec.swift_version = "5.4"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "git@gitee.com:LuckyVan_admin/nktest-lib-privacy-lib.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  = "Classes", ".//Classes/*.{c,h,m,mm,swift}"
  #spec.exclude_files = "Classes/Exclude"
  spec.prefix_header_contents = '#import <UIKit/UIKit.h>'


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Sources/Assets/*"
  spec.resource_bundles    = {
     'NKTestLibPrivacyLibResources' => ['Sources/Classes/**/*.xib', 'Sources/Assets/*']
  }

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  spec.frameworks = ['CoreTelephony','CoreFoundation','AdSupport','AppTrackingTransparency']


  # spec.library   = "iconv"
  spec.libraries = ['c++', 'resolv.9']


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  spec.static_framework = true 
  #spec.vendored_frameworks = 'Sources/Classes/Vendor/AliTigerTally_IDFA.xcframework'
  #spec.dependency "Alamofire", "~>5"

  # ――― Sub Spec Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # spec.subspec 'Network' do |n|
  #   n.source_files = 'Classes/Network/**/*'
  #   n.dependency 'Alamofire'
  #   n.dependency 'SDWebImage'
  # end

   spec.subspec 'Extension' do |e|
     e.source_files = 'Sources/Classes/Extension/*.{swift,h,m}'
   end

  # spec.subspec 'Plugin' do |p|
  #   p.source_files = 'Classes/Plugin/**/*'
  # end
  
  spec.subspec 'CommerceUI' do |c|
    c.source_files = 'Sources/Classes/CommerceUI/**/*'
    c.dependency 'NKTestLibPrivacyLib/Extension'
  end
  
end
