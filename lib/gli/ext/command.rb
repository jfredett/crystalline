module GLI
  class Command < CommandLineToken
    # fix a bug in GLI
    alias old_has_option? has_option?
    def has_option?(option)
      return false if option.nil?
      old_has_option?(option)
    end
  end
end
