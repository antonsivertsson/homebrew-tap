# typed: false

# frozen_string_literal: true

# typepipe.rb
class Typepipe < Formula
  env :std
  desc "Spotlight like application for personal use"
  homepage "https://github.com/antonsivertsson/typepipe"
  head "https://github.com/antonsivertsson/typepipe.git", branch: "main"

  def install
    system "swiftc", 'Typepipe.swift', '-o', 'typepipe'
    bin.install "#{buildpath}/typepipe"
  end
end
