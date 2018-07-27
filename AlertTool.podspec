
Pod::Spec.new do |s|

  s.name         = "AlertTool"

  s.version      = "0.0.3"

  s.summary      = "A AlertTool which contains alertView and alertController,you can show the alert by using the same method,it will auto select the alertView/alertController base on the system!"

  s.description  = <<-DESC
			A AlertTool which contains alertView and alertController,you can show the alert by using the same method,it will auto select the alertView/alertController base on the system! 
			DESC

  s.homepage     = "https://github.com/wzxfaker/AlertTool"

  s.license      = "MIT"

  s.author       = { "wzxfaker" => "912726720@qq.com" }

  s.ios.deployment_target = "5.0"

  s.source       = { :git => "http://github.com/wzxfaker/AlertTool.git", :tag => "s.version" }

  s.source_files  =  "AlertTool/XAlertTool/**/*.{h,m}"

  s.requires_arc = true

end
