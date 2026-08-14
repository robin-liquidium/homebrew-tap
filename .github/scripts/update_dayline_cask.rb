# frozen_string_literal: true

path = "Casks/dayline.rb"
version = ENV.fetch("DAYLINE_VERSION")
sha256 = ENV.fetch("DAYLINE_SHA256")

abort "Invalid Dayline version: #{version}" unless version.match?(/\A\d+\.\d+\.\d+\z/)
abort "Invalid Dayline SHA-256" unless sha256.match?(/\A[0-9a-f]{64}\z/)

source = File.read(path)
updated = source.dup
version_line = updated.sub!(/^  version "[^"]+"$/, %Q(  version "#{version}"))
sha256_line = updated.sub!(/^  sha256 "[0-9a-f]+"$/, %Q(  sha256 "#{sha256}"))

abort "Unexpected #{path} format" if !version_line || !sha256_line
abort "#{path} is already current" if updated == source

File.write(path, updated)
