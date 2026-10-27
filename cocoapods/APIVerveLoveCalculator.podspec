Pod::Spec.new do |s|
  s.name             = 'APIVerveLoveCalculator'
  s.version          = '1.2.3'
  s.summary          = 'Love Calculator calculates romantic compatibility between any two names, returning a match percentage and summary text.'
  s.description      = <<-'DESC'
Love Calculator calculates romantic compatibility between any two names, returning a match percentage and summary text. Paid plans add detailed compatibility advice for the pair.

This iOS/macOS SDK provides a convenient way to access the Love Calculator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/lovecalculator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/lovecalculator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveLoveCalculator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
