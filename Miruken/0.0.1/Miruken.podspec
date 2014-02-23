Pod::Spec.new do |s|
  s.name         = "Miruken"
  s.version      = "0.0.1"
  s.summary      = "An iOS application framework"
  s.homepage     = "https://github.com/cneuwirt/MirukenCocoa"
  s.author       = { "Craig Neuwirt" => "cneuwirt@gmail.com" }
  s.source       = { :git => "https://github.com/cneuwirt/MirukenCocoa.git", :tag => "#{s.version}" }
  s.license      = 'MIT'
  s.description  = "Miruken is an Objective-C application framework"
  s.requires_arc = true
  s.platform     = :ios, '5.0'

  s.source_files = 'Miruken/**/*.{d,h,m}'
  s.dependency 'libextobjc' 
end
