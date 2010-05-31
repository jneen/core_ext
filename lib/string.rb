class String
  def match?(regex)
    self.match(regex) ? true : false
  end

  def squish
    self.strip.gsub(/\s+/,' ')
  end

  def lines
    self.split($/)
  end

  def map_parts(delim=$/, &blk)
    self.split(delim).map(&blk).join(delim)
  end
end
