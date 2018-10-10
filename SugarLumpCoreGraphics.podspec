Pod::Spec.new do |spec|
  spec.name          = 'SugarLumpCoreGraphics'
  spec.homepage      = "https://github.com/Machipla/SugarLumpCoreGraphics"
  spec.version       = '0.0.2'
  spec.platform      = :ios, "9.0"
  spec.authors       = 'Mario Chinchilla'
  spec.summary       = 'The core graphics module of SugarLump pod'
  spec.license       = { :type => "MIT", :file => "LICENSE.md" }
  spec.source        = { :git => 'https://github.com/Machipla/SugarLumpCoreGraphics.git', :tag => "#{spec.version}" }
  spec.swift_version = '4.0'

  spec.source_files = 'Sources/**/*.{swift}'
  spec.frameworks   = 'Foundation', 'CoreGraphics'
end