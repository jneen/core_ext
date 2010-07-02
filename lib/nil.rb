class NilClass
  def to_proc
    proc do |*args|
      args.shift
    end
  end

  def zero?
    false
  end
end
