require 'highline/import'
require './lib/hanoi'

@end = false
@hanoi = Hanoi.new

until @end or @hanoi.finished? do

   @hanoi.draw

   choose do |menu|
      menu.prompt = "Choose your destiny:"

      menu.choice(:a_to_b) { @hanoi.move(:a, :b) }
      menu.choice(:a_to_c) { @hanoi.move(:a, :c) }
      menu.choice(:b_to_a) { @hanoi.move(:b, :a) }
      menu.choice(:b_to_c) { @hanoi.move(:b, :c) }
      menu.choice(:c_to_a) { @hanoi.move(:c, :a) }
      menu.choice(:c_to_b) { @hanoi.move(:c, :b) }
      menu.choice(:exit) {@end = true}
   end

   puts "Parabéns!" if @hanoi.finished?
end


