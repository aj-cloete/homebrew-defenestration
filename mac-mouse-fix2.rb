cask "mac-mouse-fix2" do
  version "2.3.3"
  sha256 "b618e640e0ea3456017a88eb66dd81938b1d3bb1a5cf5031af81def071216264"

  url "https://github.com/aj-cloete/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/aj-cloete/mac-mouse-fix/"
  name "Mac Mouse Fix2"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://noah-nuebling.github.io/mac-mouse-fix-website/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
