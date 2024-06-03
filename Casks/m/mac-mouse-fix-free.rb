cask "mac-mouse-fix-free" do
  version "2.2.4"
  sha256 "aaa"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/noah-nuebling/mac-mouse-fix/"
  name "Mac Mouse Fix Free"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://noah-nuebling.github.io/mac-mouse-fix-website/"

  livecheck do
    skip "Last free version is 2.2"
  end

  auto_updates false
  
  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
