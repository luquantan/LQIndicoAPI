Pod::Spec.new do |s|
  s.name         = "LQIndicoAPI"
  s.version      = "0.0.1"
  s.summary      = "Objective-C Wrapper for Indico's public API"
  s.description  = <<-DESC
                   This pod provides simple access to machine learning algorithms on iOS.
                   It utilizes Indico Data Solution's publicly available API's.
                   You can find more about them at https://indico.io/
                   DESC
  s.homepage     = "https://github.com/luquantan/LQIndicoAPI"
  s.license      = "MIT"
  s.author             = "Lu Quan Tan"
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/luquantan/LQIndicoAPI.git", :commit => "d0eb829a8ba8153286c2be1b17d030d745895fbd" }
  s.source_files  = "LQIndicoAPI/Categories/UIImage+LQ.*", "LQIndicoAPI/Networking/LQNetworkManager.*" , "LQIndicoAPI/Indico Endpoint/LQIndicoEndpoints.*"
  s.requires_arc = true
  s.dependency "AFNetworking", "~> 2.0"
end
