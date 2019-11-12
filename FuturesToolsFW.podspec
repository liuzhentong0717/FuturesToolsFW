Pod::Spec.new do |s|

  s.name         = "FuturesToolsFW"
  s.version      = "2.0.1"
  s.platform     = :ios, "10.0"

  s.summary      = "期货成本换算工具"
  s.homepage     = "https://github.com/liuzhentong0717/FuturesToolsFW"
  s.license              = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "liuzhentong0717" => "liuzhentong0717@163.com" }
  s.source       = { :git => "https://github.com/liuzhentong0717/FuturesToolsFW.git", :tag => s.version }
  s.description      = <<-DESC
	期货成本换算工具-----
                       DESC
  #s.source_files  = "Classes/*.{h,m}"
  #s.resource_bundles = {
   #     'Resource' => ['Assets/*']
    #}
  s.source_files = 'FuturesToolsFW/Classes/*.{h,m}'
  s.resource_bundles = {
     'Resource' => ['FuturesToolsFW/Assets/*.*']
   }

  s.requires_arc = true

end
