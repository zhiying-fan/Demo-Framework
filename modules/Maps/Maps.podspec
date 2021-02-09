#
# Be sure to run `pod lib lint Maps.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Maps'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Maps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Map View Wrapper
                       DESC

  s.homepage         = 'https://github.com/zhiying-fan/Maps'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'zhiying-fan'
  s.source           = { :path => '.' }

  s.static_framework = true
  s.ios.deployment_target = '12.0'

  s.source_files = 'Maps/Classes/*'
  
  # s.resource_bundles = {
  #   'Maps' => ['Maps/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'GoogleMaps'
  s.dependency 'Alamofire'
end
