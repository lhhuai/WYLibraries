Pod::Spec.new do |s|
  s.name                     = "WYLibraries"
  s.version                  = "1.0.1"
  s.summary                  = "A few toolkit"
  s.platform                 = :ios
  s.license                  = { :type => 'Apache', :file => 'LICENSE' }
  s.authors                  = { "Seaphy Liu" => "lhhuai0720@126.com" }
  s.homepage                 = "https://github.com/lhhuai/WYLibraries"
  s.source                   = { :git => "#{s.homepage}.git", :tag => "#{s.version}" }
  s.requires_arc             = true

  s.ios.deployment_target    = '5.0'

  s.subspec "WYFoundation" do |ss|
    ss.source_files = "WYLibraries/WYFoundation/*.{h,m}"
    ss.public_header_files = 'WYLibraries/WYFoundation/*.h'
  end

  s.subspec "WYUIKit" do |ss|
    ss.dependency 'WYLibraries/WYFoundation'

    ss.source_files = "WYLibraries/WYUIKit/*.{h,m}"
    ss.public_header_files = 'WYLibraries/WYUIKit/*.h'

  end

end
