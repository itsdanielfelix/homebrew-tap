cask "one" do
  version "0.0.1"
  sha256 "n17wGzCdYWYewZovoYP9NUxUjyJAQZlr1tHcwYWn4KeFpcYbq85yfCogv8wAYEpMFkBWsxgRraUgqtzuxEV0tA=="

  url "https://updates-one.danielfelix.in/one_#{version}_amd64.deb"
  name "One"
  desc "Desktop application"
  homepage "https://one.danielfelix.in"

  livecheck do
    url "https://updates-one.danielfelix.in/latest-linux.yml"
    regex(/^version:\s*v?(\d+(?:\.\d+)+)$/i)
  end

  pkg "one_#{version}_amd64.deb"
end
