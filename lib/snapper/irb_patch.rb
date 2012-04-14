require "active_support/all"

module IRB
  class ReadlineInputMethod
    def gets_with_snapper
      line = gets_without_snapper
      snapper = Snapper.instance
      # TODO: Make detecting our own command less ghetto
      snapper.snapper_file.puts(line) unless line.blank? || line =~ /Snapper/
      snapper.snapper_file.flush
      line
    end
    alias_method_chain :gets, :snapper
  end
end