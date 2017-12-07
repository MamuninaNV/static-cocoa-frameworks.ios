# coding: utf-8
Pod::Spec.new do |s|

# MARK: - Description

  s.name                  = 'NetworkingApi'
  s.summary               = 'Networking API is an HTTP library that makes networking for iOS apps easier.'
  s.version               = '1.1.1'

  s.platform              = :ios
  s.ios.deployment_target = '8.0'

  s.cocoapods_version     = '>= 1.4.0.beta.2'
  s.static_framework      = true

  s.homepage              = 'https://github.com/roxiemobile/networking-api.ios'
  s.authors               = { 'Roxie Mobile Ltd.' => 'sales@roxiemobile.com', 'Alexander Bragin' => 'bragin-av@roxiemobile.com', 'Denis Kolyasev' => 'kolyasevda@ekassir.com' }
  s.license               = 'BSD-4-Clause'

# MARK: - Configuration

  s.source = {
    git: 'https://github.com/roxiemobile/networking-api.ios.git',
    tag: s.version.to_s
  }

# MARK: - Modules

  # A collection of useful converters for the asynchronous REST API client.
  s.subspec 'Converters' do |sp|
=begin
    sp.dependency 'NetworkingApiConverters', s.version.to_s
=end
    sp.dependency 'NetworkingApiConverters-SCF', s.version.to_s
  end

  # A collection of utility classes used by other modules of this library.
  s.subspec 'Helpers' do |sp|
=begin
    sp.dependency 'NetworkingApiHelpers', s.version.to_s
=end
    sp.dependency 'NetworkingApiHelpers-SCF', s.version.to_s
  end

  # A collection of useful type extensions and utility classes used for communication over HTTP protocol.
  s.subspec 'Http' do |sp|
=begin
    sp.dependency 'NetworkingApiHttp', s.version.to_s
=end
    sp.dependency 'NetworkingApiHttp-SCF', s.version.to_s
  end

  # A collection of Objective-C frameworks, utility classes and 3rd party libraries used by other modules of this library.
  s.subspec 'ObjC' do |sp|
=begin
    sp.dependency 'NetworkingApiObjC', s.version.to_s
=end
    sp.dependency 'NetworkingApiObjC-SCF', s.version.to_s
  end

  # An asynchronous REST API client that makes an access to a RESTful Web Services easier.
  s.subspec 'Rest' do |sp|
=begin
    sp.dependency 'NetworkingApiRest', s.version.to_s
=end
    sp.dependency 'NetworkingApiRest-SCF', s.version.to_s
  end

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF"

  s.source = {
    http: 'https://dl.bintray.com/roxiemobile/generic/NetworkingApi-1.1.1-SCF.zip',
    sha256: 'a53b9a5ed3764e6c0b93b3210d7631e9fdf57d0cf90e096f8270190ab922fe43'
  }
end
