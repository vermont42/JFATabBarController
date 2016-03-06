Pod::Spec.new do |s|
  s.name             = "JFATabBarController"
  s.version          = "1.0.0"
  s.summary          = "JFATabBarController is a replacement for UITabBarController that allows the user to scroll to an arbitrary number of tab-bar items."
  s.homepage         = "https://github.com/vermont42/JFATabBarController"
  s.license          = "MIT"
  s.author           = "Josh Adams"
  s.source           = { :git => "https://github.com/vermont42/JFATabBarController.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/vermont42"
  s.source_files     = "JFATabBarController/JFATabBarController.h", "JFATabBarController/JFATabBarController.m", "JFATabBarController/JFAArrowView.h", "JFATabBarController/JFAArrowView.m"
  s.platform         = :ios, "9.0"
  s.requires_arc     = true
end
