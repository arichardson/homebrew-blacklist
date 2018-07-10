class BlacklistPythonAT2 < Formula
  desc "Prevent installation of python@2 formula"
  version "2.7"
  url "https://github.com/arichardson/homebrew-blacklist/releases/download/0.0.1/empty.tar"
  sha256 "5f70bf18a086007016e948b04aed3b82103a36bea41755b6cddfaf10ace3c6ef"

  conflicts_with "python@2", :because => "This is the sole purpose of this formula"
  # keg_only "Because this is just a blacklist"

  def install
    system "echo", "Blacklisting python@2"
    # need at least one file otherwise homebrew complains:
    system "mkdir", "#{pkgshare}"
    # Create a unique file to 
    system "touch", "#{pkgshare}/BLACKLISTED"
  end

  test do
    system "false"
  end
end
