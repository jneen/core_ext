class Array
  def to_proc
    proc do |*args|
      target = args.shift
      self.map do |e|
        target = e.to_proc.call(target)
      end
      target
    end
  end
end
