class GitRemoteCodecommit < Formula
  desc "Git remote helper for AWS CodeCommit using AWS credentials"
  homepage "https://github.com/fireflycons/git-remote-codecommit"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fireflycons/git-remote-codecommit/releases/download/v0.1.0/git-remote-codecommit_0.1.0_darwin_arm64.tar.gz"
      sha256 "436b9b4671d5a6c863a8885e5de2ad21d7b0ef204ee593e6d6c0a7b5e41a6b7f"
    end
    on_intel do
      url "https://github.com/fireflycons/git-remote-codecommit/releases/download/v0.1.0/git-remote-codecommit_0.1.0_darwin_amd64.tar.gz"
      sha256 "b09b47fca23cf972eb54159abe5c13f931d963fbb1ed26adecb4853ba62d3ad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fireflycons/git-remote-codecommit/releases/download/v0.1.0/git-remote-codecommit_0.1.0_linux_arm64.tar.gz"
      sha256 "416b5e5c6f0ef17a34c8e5f98c00cf0c151085d5adf54e8a7dc13c473e813871"
    end
    on_intel do
      url "https://github.com/fireflycons/git-remote-codecommit/releases/download/v0.1.0/git-remote-codecommit_0.1.0_linux_amd64.tar.gz"
      sha256 "53dd562bda2cc8c9d6fbac2bdd9c5dac8ccc57d5237fd1e29b72400b7f5dab56"
    end
  end

  def install
    bin.install "git-remote-codecommit"
  end

  test do
    assert_match "malformed", shell_output("#{bin}/git-remote-codecommit origin not-a-url 2>&1", 1)
  end
end
