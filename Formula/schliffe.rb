class Schliffe < Formula
  desc "Cuts token waste in Claude Code sessions (shell output, MCP results, prose)"
  homepage "https://github.com/mkmuniz/schliffe-tk"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkmuniz/schliffe-tk/releases/download/v#{version}/schliffe-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fc6c90b55406151b70017df24c4222c657c3d507e3fa0ea2d0542bf98f216486"
    end
    on_intel do
      url "https://github.com/mkmuniz/schliffe-tk/releases/download/v#{version}/schliffe-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dec98686858d7ad615f63c0d3ad695f5e9391c54db4d99e87b3dcc834d85c39d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mkmuniz/schliffe-tk/releases/download/v#{version}/schliffe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bc6735aaae3804e9d4a87fda415147b8f5d6d281e0b844fc8516631c27776bf"
    end
  end

  def install
    bin.install "schliffe"
  end

  def caveats
    <<~EOS
      Activate Schliffe (shims for git/cargo/docker… + the Claude Code hook):
        schliffe setup
      Preview the changes first:  schliffe setup --dry-run
      Undo later:                 schliffe setup --uninstall
    EOS
  end

  test do
    assert_match "schliffe", shell_output("#{bin}/schliffe --version")
  end
end
