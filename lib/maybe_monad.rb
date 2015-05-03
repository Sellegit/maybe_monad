require "maybe_monad/version"

class Object
  def maybe
    MaybeMonad::Monad.new(self)
  end
end

module MaybeMonad

  class Monad 

    instance_methods.each do |v| 
      undef_method(v) unless %w(object_id __id__ __send__).include?(v.to_s) 
    end 

    def initialize(just) 
      @just = just 
    end 

    def just 
      @just 
    end 

    def method_missing(name, *args) 
      # not send to nil 
      # @just.nil? ? Monad.new(nil) : Monad.new(@just.__send__(name, *args)) 

      #send to whoever responding to  
      @just.respond_to?(name) ? Monad.new(@just.__send__(name, *args)) : Monad.new(nil) 
    end 

  end 

end
