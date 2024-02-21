cask "mouse-fix2" do
  version "2.2.3"
  sha256 "6f2eea2403b97e7d045d364b28bdd3f6a85a8e3c70470e94ab4f22add2e4ce7d"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "mouse-fix2"
  desc ""
  homepage ""

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url ""
    strategy ""
  end

  depends_on macos: ""

  app "Mouse Fix2"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
