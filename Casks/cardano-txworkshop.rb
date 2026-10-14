cask "cardano-txworkshop" do
  version "0.2.2"
  sha256 "6ff5c7ee7dca0c463e32858453ef1992b7388c774877940834c8fbbd0ace6feb"

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
