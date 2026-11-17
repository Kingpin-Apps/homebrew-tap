cask "cardano-txworkshop" do
  version "0.6.0"
  sha256 "b313d1364f2f043a38ca8ceee55040984cbca7b43bad5e78994fa0cd2b74fca8"

  url "https://github.com/Kingpin-Apps/swift-cardano-txworkshop/releases/download/v#{version}/CardanoTxWorkshop-#{version}.dmg"
  name "TxWorkshop"
  desc "Inspect, validate, build and sign Cardano transactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-txworkshop"

  # Sparkle updates it in place.
  auto_updates true
  depends_on :macos

  app "TxWorkshop.app"

  zap trash: [
    "~/Library/Application Support/com.kingpinapps.cardano-txworkshop",
    "~/Library/Caches/com.kingpinapps.cardano-txworkshop",
    "~/Library/Preferences/com.kingpinapps.cardano-txworkshop.plist",
  ]
end
