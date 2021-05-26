Pod::Spec.new do |spec|
  spec.name          = 'incetro-then'
  spec.module_name   = 'Then'
  spec.version       = '1.0.0'
  spec.license       = 'MIT'
  spec.authors       = { 'incetro' => 'incetro@ya.ru' }
  spec.homepage      = "https://github.com/Incetro/Then.git"
  spec.summary       = 'Syntactic sugar for Swift'
  spec.platform      = :ios, "12.0"
  spec.swift_version = '4.0'
  spec.source        = { git: "https://github.com/Incetro/Then.git", tag: "#{spec.version}" }
  spec.source_files  = "Sources/Then/**/*.{h,swift}"
  spec.swift_version = "5.0"
  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.9"
  spec.tvos.deployment_target = "9.0"
  spec.watchos.deployment_target = "2.0"
end