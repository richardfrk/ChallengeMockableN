# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ChallengeMockableN' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ChallengeMockableN
  pod 'Alamofire', '4.4.0'
  pod 'SwiftyJSON', '3.1.4'
  pod 'RealmSwift', '2.6.2'
  
  post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end

end
