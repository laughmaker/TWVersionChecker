Pod::Spec.new do |s|

  s.name         = "TWVersionChecker"
  s.version      = "1.0.1"
  s.summary      = "AppStore版本检查更新模块"
  s.homepage     = "https://github.com/laughmaker/TWVersionChecker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "hezhendong" => "wskrdfeai@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/laughmaker/TWVersionChecker.git", :tag => "1.0.1" }
  s.source_files = "TWVersionChecker/*"

end
