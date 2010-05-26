class String
  def squish
    self.strip.gsub(/\s+/,' ')
  end

  def lines
    self.split($/)
  end

  def map_lines(&blk)
    self.lines.map(&blk).join($/)
  end
end
