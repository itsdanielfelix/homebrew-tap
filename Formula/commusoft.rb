class Commusoft < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/itsdanielfelix/commusoft-cli"
  url "https://github.com/itsdanielfelix/commusoft-cli/raw/v0.0.1/builds/commusoft"
  sha256 "3789634f418125e9f742488c9435ff76c38afeaeeee651911ca337f367a5325f"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php@8.2"

  def install
    bin.install "commusoft"
  end

  test do
    system "#{bin}/commusoft", "--version"
  end
end
