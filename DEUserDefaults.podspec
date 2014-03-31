Pod::Spec.new do |s|
  s.name         = 'DEUserDefaults'
  s.version      = '0.0.1'

  s.homepage     = 'https://github.com/dreamengine/DEUserDefaults'
  s.author       = { 'Dream Engine Interactive, Inc.' => 'contact@dreamengine.com' }
  s.social_media_url = 'https://twitter.com/dreamengine'
  
  s.summary      = 'Easy-as-pie UINib caching for UITableViewCells.'
  s.description  = ""

  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.frameworks   = ['Foundation', 'UIKit']
  s.source       = { :git => 'https://github.com/dreamengine/DEUserDefaults.git', :tag => s.version.to_s }
  s.source_files = 'src/*.{h,m}'

  s.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
end