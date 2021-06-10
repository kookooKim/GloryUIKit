#source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!

workspace 'GloryUIKit'
project 'GloryUIKit.xcodeproj'
project 'GKitSmaple/GKitSmaple.xcodeproj'


def common_libs
  pod 'Alamofire'
end


target 'GloryUIKit' do
  project 'GloryUIKit.xcodeproj'

  common_libs

  pod 'SnapKit'

end

target 'GKitSmaple' do
  project 'GKitSmaple/GKitSmaple.xcodeproj'

  common_libs

  pod 'FLEX'

  target 'GKitSmapleTests' do
    inherit! :search_paths
  end

end
