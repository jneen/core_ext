class Object
  def metaclass
    class << self
      self
    end
  end

  def meta_eval(&blk)
    self.metaclass.class_eval(&blk)
  end

  def cache_clear(ivar)
    ivar = ivar.to_s
    ivar.unlchomp!('@')
    instance_variable_set(ivar, nil)
  end

end
