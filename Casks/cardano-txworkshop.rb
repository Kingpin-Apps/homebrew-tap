cask "cardano-txworkshop" do
  version "0.1.0"
  sha256 "2e3e466cd0b58618db2863714083d3a74a3f606e744a9a9c70361b4b8627058b"

  url "https://github.com/Kingpin-Apps/swift-cardano-txworkshop/releases/download/v#{version}/CardanoTxWorkshop-#{version}.dmg"
  name "Cardano TxWorkshop"
  desc "Inspect, validate, build and sign Cardano transactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-txworkshop"

  # Sparkle updates it in place.
  auto_updates true

  app "Cardano TxWorkshop Direct.app"

  zap trash: [
    "~/Library/Application Support/com.kingpinapps.cardano-txworkshop",
    "~/Library/Caches/com.kingpinapps.cardano-txworkshop",
    "~/Library/Preferences/com.kingpinapps.cardano-txworkshop.plist",
  ]
end
