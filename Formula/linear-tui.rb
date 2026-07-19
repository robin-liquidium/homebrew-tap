class LinearTui < Formula
  desc "Terminal UI for Linear"
  homepage "https://github.com/robin-liquidium/linear-tui"
  url "https://github.com/robin-liquidium/linear-tui/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "ae98e17ff2ab628cf4189e513a69f6abfee6165e547540d9f35c0fcf06784a2a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/linear-tui"
  end

  test do
    assert_match "linear-tui", shell_output("#{bin}/linear-tui --version")
  end
end
