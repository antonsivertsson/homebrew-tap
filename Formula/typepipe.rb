# typed: false

# frozen_string_literal: true

# typepipe.rb
class Typepipe < Formula
  env :std
  desc "Spotlight like application for personal use"
  depends_on :macos
  depends_on macos: :sonoma
  depends_on "swift"
  homepage "https://github.com/antonsivertsson/typepipe"
  url "https://github.com/antonsivertsson/typepipe/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "2805603d7243aeeadd6422c3c7a555bbe3fb0dbd8d676b1dda7826b6f7981db2"

  def install
    system "swiftc", "main.swift", "Version.swift", "-o", "typepipe"
    bin.install "#{buildpath}/typepipe"
  end
end
