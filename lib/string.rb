class String
  def match?(regex)
    self.match(regex) ? true : false
  end

  module Squish
    def squish!
      self.strip!.gsub!(/\s+/,' ')
      self
    end

    def squish
      self.dup.squish!
    end
  end
  include Squish

  module Lines
    def lines
      self.split($/)
    end

    def map_parts(delim=$/, &blk)
      self.split(delim).map(&blk).join(delim)
    end
    alias map_lines map_parts
  end
  include Lines

  module StartsAndEndsWith
    def starts_with?(str)
      self.index(str).zero?
    end
    alias startswith? starts_with?

    def ends_with?(str)
      return true if str.empty?
      self.index(str) == self.length - str.length
    end
    alias endswith? ends_with?
  end
  include StartsAndEndsWith

  module ChompExt
    def lchomp!(ch=$/)
      if self.starts_with? ch
        slice!(0...(ch.length))
      end
      self
    end

    def lchomp(ch=$/)
      self.dup.lchomp!(ch)
    end

    def unchomp!(ch=$/)
      self.chomp!(ch)
      self << ch
      self
    end

    def unchomp(ch=$/)
      self.dup.unchomp!(ch)
    end

    def unlchomp!(ch=$/)
      self.lchomp!(ch)
      self.insert(0,ch)
      self
    end

    def unlchomp(ch=$/)
      self.dup.unlchomp!(ch)
    end
  end
  include ChompExt
end
