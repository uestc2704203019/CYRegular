#
#  Be sure to run `pod spec lint CYRegular.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "CYRegular"
  s.version      = "0.1.0"
  s.summary      = "Regular string for Project"
  s.homepage     = "https://github.com/uestc2704203019/CYRegular"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "chai" => "769099058@qq.com" }
  s.source       = { :git => "https://github.com/uestc2704203019/CYRegular.git", :tag => "#{s.version}" }
  s.source_files  = "CYRegular", "CYRegular/Classes/**/*.{h,m}"


end
