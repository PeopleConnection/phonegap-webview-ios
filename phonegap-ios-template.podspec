Pod::Spec.new do |s|

  s.name               = "phonegap-ios-template"
  s.version            = "0.3.1"
  s.summary            = "Cordova template project for iOS."

  s.description        = <<-DESC "A Cordova project to get started quickly with an embedded webview in a native iOS project."
                         DESC
  s.license            = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.homepage           = "https://github.com/phonegap/phonegap-webview-ios"
  s.author             = { "The Adobe PhoneGap Team" => "" }
  s.social_media_url   = "http://twitter.com/phonegap"
  s.source             = { :git => "https://github.com/PeopleConnection/phonegap-webview-ios.git", :tag => "0.3.1" }
  s.resources          = "resources/*"
end
