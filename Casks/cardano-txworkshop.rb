cask "cardano-txworkshop" do
  version "0.1.7"
  sha256 "9e4914d624daa812e0abeced7c2e310c9033bd9ffeaa67e85e5bc9b88da34b76"

  url "https://github.com/Kingpin-Apps/swift-cardano-txworkshop/releases/download/v#{version}/CardanoTxWorkshop-#{version}.dmg"
  name "Cardano TxWorkshop"
  desc "Inspect, validate, build and sign Cardano transactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-txworkshop"

  # Sparkle updates it in place.
  auto_updates true
  depends_on :macos

  app "Cardano TxWorkshop.app"

  zap trash: [
    "~/Library/Application Support/com.kingpinapps.cardano-txworkshop",
    "~/Library/Caches/com.kingpinapps.cardano-txworkshop",
    "~/Library/Preferences/com.kingpinapps.cardano-txworkshop.plist",
  ]
end
