class Magi < Formula
  desc "Terminal-based Git client inspired by Magit"
  homepage "https://github.com/anddani/magi"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "71b1bc196f7c78610482ee105ca854aa41109494d7a449edb6c378d8083d82ec"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7eca14c0c049e5490d8cf5070b6c8d4bd7371c75540bb96803a23813dc6ae34f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86b460147919cb1e1c177131e804101e0a66c39c9a62434fa102fade200b5434"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc245aba9c2289fe2ab7395f1cc1ee5bafbd80f898b313e0278968e56168edd1"
    end
  end

  def install
    bin.install "magi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magi --version")
  end
end
