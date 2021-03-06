Pod::Spec.new do |s|
  s.name             = "Differentiator"
  s.version          = "3.1.0"
  s.summary          = "Diff algorithm for UITableView and UICollectionView."
  s.description      = <<-DESC
  Diff algorithm for UITableView and UICollectionView.
  RxDataSources is powered by Differentiator. 
                        DESC
                        
  s.homepage         = "https://github.com/RxSwiftCommunity/RxDataSources"                      
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :git => "https://github.com/RxSwiftCommunity/RxDataSources.git", :tag => s.version.to_s }

  s.requires_arc          = true
  
  s.source_files = 'Sources/Differentiator/**/*.swift'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF42"

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.default_subspec = 'StaticCocoaFramework'
  s.source = {
    http: "https://dl.bintray.com/roxiemobile/generic/Differentiator-#{s.version}-SCF42.zip",
    sha256: 'd50ed35d98a8f06d990b9cd77ed5329628a0dd7edd4e1aa65bccbc297b5a28e8'
  }

  s.source_files = nil

  s.subspec 'StaticCocoaFramework' do |sc|
    sc.preserve_paths = 'Differentiator.framework/*'
    sc.source_files = 'Differentiator.framework/Headers/*.h'
    sc.public_header_files = 'Differentiator.framework/Headers/*.h'
    sc.vendored_frameworks = 'Differentiator.framework'
  end
end
