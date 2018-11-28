require "hello_tama/version"

module HelloTama
  class Error < StandardError; end
  def self.greets
    puts 'Hello, Tama!'
  end
end
