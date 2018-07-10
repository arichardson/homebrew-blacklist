class BlacklistPythonAT2 < Formula
  desc "Prevent installation of python@2 formula"
  version "2.7"
  url "https://github.com/arichardson/homebrew-blacklist/releases/download/0.0.1/empty.tar"

  conflicts_with "python@2", :because => "This is the sole purpose of this formula"

  def install
    system "echo", "Blacklisting python@2"
  end

  test do
    system "false"
  end
end
