require_relative 'dog'

lassie, fido, stimpy = %w[Lassie Fido Stimpy].collect{|name| Dog.new(name)}
lassie.can :dance, :poo, :laugh
fido.can :poo
stimpy.can :dance

p lassie.dance
p lassie.poo
p lassie.laugh
puts
p fido.dance
p fido.poo
p fido.laugh
puts
p stimpy.dance
p stimpy.poo
p stimpy.laugh

=begin
Expected output is:

"Lassie is dancing"
"Lassie is a smelly doggy!"
"Lassie finds this hilarious!"

"Fido doesn't understand dance"
"Fido is a smelly doggy!"
"Fido doesn't understand laugh"

"Stimpy is dancing"
"Stimpy doesn't understand poo"
"Stimpy doesn't understand laugh"

=end

