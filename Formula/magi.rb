class Magi < Formula
  desc "Terminal-based Git client inspired by Magit"
  homepage "https://github.com/anddani/magi"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "43680760059093ffc516b81d774a02ce83bba18bb18dc376673dfabccaa20b66"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b8233cd12aee99bf03c24d9a6a6107241f897dfab70e49ea9d75477489dcee29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8799dcfba8856e67b39056d1571ecabef1eef9ebd5de9ae8b446f9d3731253af"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd3898265a1d8131f72eba1dbb08fa9687cef7cf6a96095b90746b09856f419c"
    end
  end

  def install
    bin.install "magi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magi --version")
  end
end
