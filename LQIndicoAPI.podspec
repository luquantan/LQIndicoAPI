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
  s.license      = "LICENSE"
  s.author             = "Lu Quan Tan"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/luquantan/LQIndicoAPI.git", :tag => 'v0.0.1' }
  s.source_files  = "LQIndicoAPI/Categories/UIImage+LQ.{h,m}", "LQIndicoAPI/Networking/LQNetworkManager.{h,m}" , "LQIndicoAPI/Indico\ Endpoint/LQIndicoEndpoints.h"
  s.requires_arc = true
  s.subspec 'AFNetworking' do |cs|
    cs.dependency 'AFNetworking'
    cs.dependency 'AFNetworking/NSURLConnection'
    cs.dependency 'AFNetworking/NSURLSession'
    cs.dependency 'AFNetworking/Reachability'
    cs.dependency 'AFNetworking/Security'
    cs.dependency 'AFNetworking/Serialization'
    cs.dependency 'AFNetworking/UIKit'
  end
end
