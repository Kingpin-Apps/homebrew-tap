cask "cardano-txworkshop" do
  version "0.2.0"
  sha256 "a52cce153ce9da129486423952312bf4c766fe36cba2c4702be3b55fb3782591"

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
