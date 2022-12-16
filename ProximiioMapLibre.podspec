#
# Be sure to run `pod lib lint ProximiioMapbox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProximiioMapLibre'
  s.version          = '5.27.0'
  s.summary          = 'Proximi.io MapLibre Indoor Support'

  s.description      = <<-DESC
Proximi.io MapLibre Indoor navigation library.
                       DESC

  s.homepage         = 'https://github.com/proximiio/proximiio-maplibre-ios-pod.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'x-oauth-basic' => 'matej.drzik@quanto.sk' }
  s.source           = { :git => 'https://github.com/proximiio/proximiio-maplibre-ios-pod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.dependency 'Proximiio'
  s.dependency 'ProximiioMapView'
  s.dependency 'SwiftyJSON'
  s.dependency 'GRMustache.swift'
  s.dependency 'Alamofire'

  s.frameworks = 'UIKit', 'Network'

  s.vendored_frameworks = 'Pod/ProximiioMapLibre.xcframework'
end
