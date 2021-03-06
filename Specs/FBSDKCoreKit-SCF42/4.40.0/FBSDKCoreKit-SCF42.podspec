# Use the --use-libraries switch when pushing or linting this podspec

Pod::Spec.new do |s|

  s.name         = 'FBSDKCoreKit'
  s.version      = '4.40.0'
  s.summary      = 'Official Facebook SDK for iOS to access Facebook Platform core features'

  s.description  = <<-DESC
                   The Facebook SDK for iOS CoreKit framework provides:
                   * App Events (for App Analytics)
                   * Graph API Access and Error Recovery
                   * Working with Access Tokens and User Profiles
                   DESC

  s.homepage     = 'https://developers.facebook.com/docs/ios/'
  s.license      = { :type => 'Facebook Platform License', :file => 'LICENSE' }
  s.author       = 'Facebook'

  s.platform     = :ios, :tvos
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => 'https://github.com/facebook/facebook-objc-sdk.git',
                     :tag => "v#{s.version}"
                    }

  s.ios.weak_frameworks = 'Accounts', 'CoreLocation', 'Social', 'Security', 'QuartzCore', 'CoreGraphics', 'UIKit', 'Foundation', 'AudioToolbox'
  s.tvos.weak_frameworks = 'CoreLocation', 'Security', 'QuartzCore', 'CoreGraphics', 'UIKit', 'Foundation', 'AudioToolbox'

  # This excludes `FBSDKCoreKit/FBSDKCoreKit/Internal_NoARC/` folder, as that folder includes only `no-arc` files.
  s.requires_arc = ['FBSDKCoreKit/FBSDKCoreKit/*',
                    'FBSDKCoreKit/FBSDKCoreKit/Internal/**/*']

=begin
  s.ios.dependency 'Bolts', '~> 1.9'
=end

  s.public_header_files = 'FBSDKCoreKit/FBSDKCoreKit/*.h'
  s.source_files = 'FBSDKCoreKit/FBSDKCoreKit/**/*.{h,m}'
  s.resources = 'FacebookSDKStrings.bundle'
  s.ios.exclude_files = 'FBSDKCoreKit/FBSDKCoreKit/FBSDKDeviceButton.{h,m}',
                        'FBSDKCoreKit/FBSDKCoreKit/FBSDKDeviceViewControllerBase.{h,m}',
                        'FBSDKCoreKit/FBSDKCoreKit/Internal/Device/**/*'
  s.tvos.exclude_files = 'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkResolver.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkUtility.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLink.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkNavigation.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkResolving.h',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkReturnToRefererController.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkReturnToRefererView.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKAppLinkTarget.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKGraphErrorRecoveryProcessor.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKMeasurementEvent.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKMutableCopying.h',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKProfile.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKProfilePictureView.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKURL.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/FBSDKWebViewAppLinkResolver.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/AppLink/**/*',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/AppEvents/Codeless/*',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/AppEvents/FBSDKHybridAppEventsScriptMessageHandler.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/BridgeAPI/**/*',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKAppLinkReturnToRefererView_Internal.h',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKAppLink_Internal.h',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKAudioResourceLoader.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKContainerViewController.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKMeasurementEvent_Internal.h',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKMonotonicTime.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKProfile+Internal.h',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKSystemAccountStoreAdapter.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKTriStateBOOL.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/FBSDKURL_Internal.h',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/UI/FBSDKCloseIcon.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/UI/FBSDKColor.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/UI/FBSDKMaleSilhouetteIcon.{h,m}',
                          'FBSDKCoreKit/FBSDKCoreKit/Internal/WebDialog/**/*'

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF42"

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.default_subspec = 'StaticCocoaFramework'
  s.source = {
    http: "https://dl.bintray.com/roxiemobile/generic/FBSDKCoreKit-#{s.version}-SCF42.zip",
    sha256: '15111492c274113aa2463209746b87657a82ca0f241b61ff120a70dfd38f3115'
  }

  s.source_files = nil
  s.public_header_files = nil
  s.resources = nil
  s.exclude_files = nil
  s.ios.exclude_files = nil

  s.subspec 'StaticCocoaFramework' do |sc|
    sc.preserve_paths = 'FBSDKCoreKit.framework/*'
    sc.source_files = 'FBSDKCoreKit.framework/Headers/*.h'
    sc.public_header_files = 'FBSDKCoreKit.framework/Headers/*.h'
    sc.vendored_frameworks = 'FBSDKCoreKit.framework'
    sc.resources = 'FBSDKCoreKit.framework/FacebookSDKStrings.bundle'

    # Dependencies
    sc.dependency 'Bolts-SCF42', '~> 1.9.0'
  end
end
