Pod::Spec.new do |s|
  s.name         = "Miruken"
  s.version      = "0.0.1"
  s.summary      = "An application framework that embraces composition and convention to enhance the Cocoa development stack.""
  s.homepage     = "https://github.com/cneuwirt/MirukenCocoa"
  s.author       = { "Craig Neuwirt" => "cneuwirt@gmail.com" }
  s.source       = { :git => "https://github.com/cneuwirt/MirukenCocoa.git", :tag => "#{s.version}" }
  s.license      = 'MIT'  ≈ß
  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.subspec 'Core' do |sp|
    sp.source_files = "Miruken/*.{h,m}"
    sp.dependency 'libextobjc' 
  end

  subspecs_names = %w[
    Cocoa
    Context
    Callbacks
    Concurrency
    Error
    Validation
    SideEffects ]

  subspec_dependencies = {
    'Cocoa'       => ['Miruken/Context'],
    'Context'     => ['Miruken/Callbacks'],
    'Callbacks'   => ['Miruken/Concurrency'],
    'Error'       => ['Miruken/Cocoa'],
    'Validation'  => ['Miruken/Context'],
    'SideEffects' => ['Miruken/Context']
  }

  subspecs_names.each do |name|
    s.subspec name do |sp|
      sp.source_files = "Miruken/#{name}/*.{h,m}"
      deps = subspec_dependencies[name] || []
      sp.dependency 'Miruken/Core'
      deps.each do |dep|
        sp.dependency dep
      end
    end
  end

  s.description  = <<-DESC
Inversion of Control is the principle that separates a framework from an api.  The iOS SDK provides a rich set of functionality in the form of frameworks and lower level apis.  However, the SDK is missing the glue to seamlessly integrate these components.  This often results in unnecessary and undesirable coupling and complexity.  Miruken leverages the dynamic capabilities of objective-c to fill this missing layer an expose the features of the SDK in a clear and consistent manner.
                   DESC

end
