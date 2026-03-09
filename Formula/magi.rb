class Magi < Formula
  desc "Terminal-based Git client inspired by Magit"
  homepage "https://github.com/anddani/magi"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2b10af7351764e0a7ec66ec9731d5754d0cb8744c066e85fb88a70e84bd2308e"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "06614e98975b529b53a267b386e0f6329782a21cd8f8c030e09e80f45ef91e3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b3adf05113dfa75e48d4c8aae179b5993f0ca5798eec69807fea80851b8e9bf"
    end

    on_intel do
      url "https://github.com/anddani/magi/releases/download/v#{version}/magi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65aa8ea1cf08236c31de1f3e34024217a5801380acfad540503d656fc12b5057"
    end
  end

  def install
    bin.install "magi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magi --version")
  end
end
