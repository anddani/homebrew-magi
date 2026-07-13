class Magi < Formula
  desc "Terminal-based Git client inspired by Magit"
  homepage "https://github.com/anddani/magi"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "59bf0d1f49b389916c2c991c7178f13a12a8f533e9ec4ca68142036d498c3bb9"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1b44a8be71d8c0d325679ba7c956f543d3ef04563c96b076dd6fd19c7ee27d91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0daf840ef230043845fc77afc9b70fda2f41dc0f324015a31e39445cae91e737"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "666733059d936fd469af0186e33d70a26c01d9371e81a4697b7cf992e5ad966a"
    end
  end

  def install
    bin.install "magi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magi --version")
  end
end
