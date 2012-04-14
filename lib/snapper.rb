require "snapper/version"
require "snapper/irb_patch"
require "uuid"

class Snapper
  SNAPPER_DIR = ENV['SNAPPER_DIR'] || "#{ENV['HOME']}/.snapper"

  attr_reader :snapper_file

  def initialize
    FileUtils.mkdir_p(SNAPPER_DIR) unless File.exists?(SNAPPER_DIR)
    @uuid = UUID.new
    @snapper_file = File.new("/tmp/#{@uuid.generate}.snapper", "w+")
  end

  @@instance = Snapper.new

  def self.instance
    return @@instance
  end

  def self.snap(name)
    FileUtils.cp(instance.snapper_file.path, "#{SNAPPER_DIR}/#{name}.snapper")
    return true
  end

  def self.restore(name)
    file = File.open("#{SNAPPER_DIR}/#{name}.snapper")
    while line = file.gets
      IRB.CurrentContext.evaluate(line, 0)
    end
  end

  private_class_method :new
end