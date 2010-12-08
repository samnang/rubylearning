class A 
  @@a = 1
  @a = 2
  a = 3
  
  define_singleton_method(:bindings) do
    binding
  end
end
  
p eval('[@@a, @a, a]', A.bindings)
