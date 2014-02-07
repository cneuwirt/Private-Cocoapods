Pod::Spec.new do |s|
  s.name         = "CNConcurrency"
  s.version      = "0.0.1"
  s.summary      = "A framework for simplifying concurrency"
  s.homepage     = "https://github.com/cneuwirt/CNConcurrency"
  s.author       = { "Craig Neuwirt" => "cneuwirt@gmail.com" }
  s.source       = { :git => "https://github.com/cneuwirt/CNConcurrency.git", :tag => "#{s.version}" }
  s.license      = 'MIT'
  s.description  = "CNConcurrency is an Objective-C framework providing concurrency semantics"
  s.requires_arc = true
  s.platform     = :ios, '5.0'

  s.source_files = 'Concurrency/**/*.{d,h,m}'
end
