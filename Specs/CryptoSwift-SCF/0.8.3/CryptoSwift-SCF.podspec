# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "CryptoSwift"
  s.version      = "0.8.3"
  s.source       = { :git => "https://github.com/krzyzanowskim/CryptoSwift.git", :tag => "#{s.version}" }
  s.summary      = "Cryptography in Swift. SHA, MD5, CRC, PBKDF, Poly1305, HMAC, HDKF, ChaCha20, Rabbit, Blowfish, AES."
  s.description  = "Cryptography functions and helpers for Swift implemented in Swift. SHA-1, SHA-2, SHA-3, MD5, PBKDF1, PBKDF2, CRC, Poly1305, HMAC, ChaCha20, Rabbit, Blowfish, AES"
  s.homepage     = "https://github.com/krzyzanowskim/CryptoSwift"
  s.license      = {:type => "Attribution License", :file => "LICENSE"}
  s.authors      = {'Marcin Krzyżanowski' => 'marcin@krzyzanowskim.com'}
  s.social_media_url   = "https://twitter.com/krzyzanowskim"
  s.swift_version = "4.0"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source_files  = "Sources/CryptoSwift/**/*.swift"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0', 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule', 'SWIFT_DISABLE_SAFETY_CHECKS' => 'YES', 'SWIFT_ENFORCE_EXCLUSIVE_ACCESS' => 'compile-time', 'GCC_UNROLL_LOOPS' => 'YES'}

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF"

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.default_subspec = 'StaticCocoaFramework'
  s.source = {
    http: 'https://dl.bintray.com/roxiemobile/generic/CryptoSwift-0.8.3-SCF.zip',
    sha256: 'e43f8830b82a2f1699b01ecde4377cab763ad803c48ad901deb23496aa48c9cd'
  }

  s.source_files = nil

  s.subspec 'StaticCocoaFramework' do |sc|
    sc.preserve_paths = 'CryptoSwift.framework/*'
    sc.source_files = 'CryptoSwift.framework/Headers/*.h'
    sc.public_header_files = 'CryptoSwift.framework/Headers/*.h'
    sc.vendored_frameworks = 'CryptoSwift.framework'
  end
end
