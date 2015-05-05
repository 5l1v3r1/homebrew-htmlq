class Htmlq < Formula
  homepage "https://github.com/dutchcoders/htmlq"
  url "https://github.com/dutchcoders/htmlq/archive/v1.0.0.tar.gz"
  sha256 "344270f1ab128aa14ccd8f70a5fcbe74975e532c36afccf418e285f75b864724"
  head "https://github.com/dutchcoders/htmlq.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    mkdir_p "src/github.com/dutchcoders/"
    ln_s buildpath, "src/github.com/dutchcoders/htmlq"

    system "go", "get", "github.com/PuerkitoBio/goquery/"
    system "go", "get", "gopkg.in/alecthomas/kingpin.v1/"
    system "go", "build", "-o", "htmlq"

    bin.install "htmlq"
  end

  test do
    system "#{bin}/htmlq", "brew.sh"
  end
end
