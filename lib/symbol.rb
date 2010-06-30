class Symbol
  def to_proc
    proc do |*args|
      args.shift.send(self, *args)
    end
  end
end
