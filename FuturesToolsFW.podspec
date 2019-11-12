Pod::Spec.new do |s|

  s.name         = "FuturesToolsFW"
  s.version      = "1.0.0"
  s.platform     = :ios, "10.0"

  s.summary      = "期货成本换算工具"
  s.homepage     = "https://github.com/liuzhentong0717/FuturesToolsFW"
  s.license              = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "liuzhentong0717" => "liuzhentong0717@163.com" }
  s.source       = { :git => "https://github.com/liuzhentong0717/FuturesToolsFW.git", :tag => "1.0.0" }
  s.resources          = "Assets/FuturesToolsBundle.bundle"
  s.frameworks = 'Foundation', 'UIKit', 
  s.vendored_frameworks = 'FuturesToolsFW.framework'
  s.requires_arc = true

end
