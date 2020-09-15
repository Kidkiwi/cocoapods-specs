Pod::Spec.new do |s|

  s.name         = "Tapdaq"
  s.version      = "7.7.0"
  s.summary      = "Tapdaq SDK"
  s.description  = <<-DESC
  The official Tapdaq iOS SDK
                   DESC
  s.homepage     = "https://tapdaq.com"
  s.license      = {
    :type => "Commercial",
    :text => "https://tapdaq.com/terms-and-conditions"
  }
  s.author             = { "Tapdaq" => "support@tapdaq.com" }
  s.social_media_url   = "http://twitter.com/tapdaq"

  s.platform     = :ios, "9.0"
  s.source       = { :http => "http://ios-sdk.tapdaq.com/7.7.0/cocoapods_frameworks.zip" }

  s.default_subspec = "SDK"

  s.subspec "SDK" do |sdk|
    sdk.frameworks = "Foundation", "UIKit", "QuartzCore", "AdSupport", "Security", "SystemConfiguration", 
    "MobileCoreServices", "StoreKit", "CoreTelephony", "AVFoundation"
    sdk.vendored_frameworks = 'Tapdaq.framework'
    sdk.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
    sdk.requires_arc = true
  end

  s.subspec "AdColony" do |adcolony|
    adcolony.dependency 'Tapdaq/AdColonyAdapter'
    adcolony.dependency "AdColony", "4.2.0"
  end
  
  s.subspec "AdColonyAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/AdColonyAdapter.framework"
  end

  s.subspec "AdMob" do |admob|
    admob.dependency 'Tapdaq/AdMobAdapter'
    admob.dependency "Google-Mobile-Ads-SDK", "7.62.0"
  end
  
  s.subspec "AdMobAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/AdMobAdapter.framework"
  end

  s.subspec "AppLovin" do |applovin|
    applovin.dependency 'Tapdaq/AppLovinAdapter'
    applovin.dependency "AppLovinSDK", "6.13.1"
  end
  
  s.subspec "AppLovinAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/AppLovinAdapter.framework"
  end

  s.subspec "Chartboost" do |chartboost|
    chartboost.dependency 'Tapdaq/ChartboostAdapter'
    chartboost.dependency "ChartboostSDK", "8.2.0"
  end
  
  s.subspec "ChartboostAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/ChartboostAdapter.framework"
  end

  s.subspec "FAN" do |fan|
    fan.dependency 'Tapdaq/FANAdapter'
    fan.dependency "FBAudienceNetwork", "5.10.1"
  end
  
  s.subspec "FANAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/FANAdapter.framework"
  end

  s.subspec "InMobi" do |inmobi|
    inmobi.dependency 'Tapdaq/InMobiAdapter'
    inmobi.dependency "InMobiSDK/Core", "9.0.7"
  end
  
  s.subspec "InMobiAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/InMobiAdapter.framework"
  end

  s.subspec "IronSource" do |ironsource|
    ironsource.dependency 'Tapdaq/IronSourceAdapter'
    ironsource.dependency "IronSourceSDK", "6.17.0"
  end
  
  s.subspec "IronSourceAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/IronSourceAdapter.framework"
  end

  s.subspec "Maio" do |maio|
    maio.dependency 'Tapdaq/MaioAdapter'
    maio.dependency "MaioSDK", "1.5.4"
  end
  
  s.subspec "MaioAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/MaioAdapter.framework"
  end

  s.subspec "Mintegral" do |mintegral|
    mintegral.dependency 'Tapdaq/MintegralAdapter'
    mintegral.dependency "MintegralAdSDK", "6.1.2"
    mintegral.dependency "MintegralAdSDK/BidRewardVideoAd", "6.1.2"
    mintegral.dependency "MintegralAdSDK/BidInterstitialVideoAd", "6.1.2"
    mintegral.dependency "MintegralAdSDK/BannerAd", "6.1.2"
  end
  
  s.subspec "MintegralAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/MintegralAdapter.framework"
  end

  s.subspec "Tapjoy" do |tapjoy|
    tapjoy.dependency 'Tapdaq/TapjoyAdapter'
    tapjoy.dependency "TapjoySDK", "12.6.1"
  end
  
  s.subspec "TapjoyAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/TapjoyAdapter.framework"
  end

  s.subspec "Pangle" do |pangle|
    pangle.dependency 'Tapdaq/PangleAdapter'
    pangle.dependency "Bytedance-UnionAD", "3.1.0.4"
  end
  
  s.subspec "PangleAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/PangleAdapter.framework"
  end

  s.subspec "UnityAds" do |unityads|
    unityads.dependency 'Tapdaq/UnityAdsAdapter'
    unityads.dependency "UnityAds", "3.4.6"
  end
  
  s.subspec "UnityAdsAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/UnityAdsAdapter.framework"
  end

  s.subspec "Vungle" do |vungle|
    vungle.dependency 'Tapdaq/VungleAdapter'
    vungle.dependency "VungleSDK-iOS", "6.7.0"
  end
  
  s.subspec "VungleAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/VungleAdapter.framework"
  end

  s.subspec "YouAppi" do |youappi|
    youappi.dependency 'Tapdaq/YouAppiAdapter'
    youappi.dependency "YouAppiMoatSDK", "5.0.0"
  end
  
  s.subspec "YouAppiAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/YouAppiAdapter.framework"
    adapter.user_target_xcconfig = { 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES' }
  end

  s.subspec "ZPlay" do |zplay|
    zplay.dependency 'Tapdaq/ZPlayAdapter'
    zplay.dependency "PlayableAds", "2.6.0"
  end
  
  s.subspec "ZPlayAdapter" do |adapter|
    adapter.dependency "Tapdaq/SDK"
    adapter.vendored_frameworks = "Adapters/ZPlayAdapter.framework"
  end
end


