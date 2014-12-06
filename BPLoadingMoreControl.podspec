Pod::Spec.new do |s|
  s.name             = "BPLoadingMoreControl"
  s.version          = "0.1.0"
  s.summary          = "加载更多控件"
  s.description      = <<-DESC
                        BPLoadingMoreControl 可以在UITableView或UICollectionView上显示正在加载更多的控件
                       DESC
  s.homepage         = "https://github.com/mikeooye/BPLoadingMoreControl"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "LiHaozhen" => “lihaozhen@icloud.com” }
  s.source           = { :git => "https://github.com/mikeooye/BPLoadingMoreControl.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'BPLoadingMoreControl' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
end
