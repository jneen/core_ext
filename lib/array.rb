class Array
  def to_set
    require 'set'
    Set.new(self)
  end
end
