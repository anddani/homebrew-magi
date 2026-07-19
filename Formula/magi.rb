class Magi < Formula
  desc "Terminal-based Git client inspired by Magit"
  homepage "https://github.com/anddani/magi"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dc01f80865a05718425735283252d90b4536dfd3d4a8afce645b741718bae6fc"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "092a69fc9f64b41bcec7d9e47ebda9a9f55f4ed79683739dfe3e0f195a89bfd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb44e5952ab406f96dac21fe285ca05a3f733489e30cb9a59f1861cb7fc7b63e"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40a83785ea418bb9827f463c96a5a9e3f71f6e0e2ea8bb414a8db4b41a0099e"
    end
  end

  def install
    bin.install "magi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magi --version")
  end
end
