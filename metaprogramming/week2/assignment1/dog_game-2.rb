require_relative 'dog-2'

lassie, fido, stimpy = %w[Lassie Fido Stimpy].collect{|name| Dog.new(name)}
lassie.can :dance, :poo, :laugh
fido.can(:poo){"#{name} is smelly."}
stimpy.can :dance
stimpy.can(:cry){"#{name} cried AHHHH"}

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
p stimpy.cry


=begin
Expected output is:

"Lassie is dancing"
"Lassie is a smelly doggy!"
"Lassie finds this hilarious!"

"Fido doesn't understand dance"
"Fido is smelly."
"Fido doesn't understand laugh"

"Stimpy is dancing"
"Stimpy doesn't understand poo"
"Stimpy doesn't understand laugh"
"Stimpy cried AHHHH"


=end

