cask "repo-prompt" do
  version "1.2.23"
  sha256 "21d615e0e05e070dfab9d25f6edaf98782e5bfc7c3b3b52f9123328f1c38436e"

  url "https://repoprompt.s3.us-east-2.amazonaws.com/RepoPrompt-#{version}.dmg",
      verified: "repoprompt.s3.us-east-2.amazonaws.com/"
  name "Repo Prompt"
  desc "Prompt generation tool"
  homepage "https://repoprompt.com/"

  livecheck do
    url "https://repoprompt.s3.us-east-2.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Repo Prompt.app"

  zap trash: [
    "~/Library/Application Support/com.pvncher.repoprompt",
    "~/Library/Application Support/RepoPrompt",
    "~/Library/Caches/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt.binarycookies",
    "~/Library/Preferences/com.pvncher.repoprompt.plist",
  ]
end
