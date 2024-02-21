cask "mac-mouse-fix-free" do
  version "2.2.3"
  sha256 "6f2eea2403b97e7d045d364b28bdd3f6a85a8e3c70470e94ab4f22add2e4ce7d"

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
