class Composemux < Formula
  desc "Read-only terminal UI for Docker Compose logs with pinnable panes"
  homepage "https://github.com/sofired/composemux"
  url "https://github.com/sofired/composemux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6025839fca71a44ff2c56a2e6fc4f9b05d0354c1cd290262588fb04f85616156"
  license "MIT"

  head "https://github.com/sofired/composemux.git", branch: "main"

  depends_on "rust" => :build

  # cargo fetches crates.io deps during the build; Homebrew's build sandbox
  # allows network by default (opt out with deny_network_access!), so no
  # allow_network_access! stanza is needed.
  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "composemux #{version}", shell_output("#{bin}/composemux --version")
  end
end
