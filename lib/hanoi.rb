class Hanoi
 def initialize
    @rods = {a:[3, 2, 1], b:[], c:[]}
 end

 def rod(rod)
    @rods[rod]
 end

 def move(from, to)
    raise Exception.new("Deu pau!") unless allowed_move?(from, to)
       @rods[to].push(@rods[from].pop)
 end

 def allowed_move?(from, to)
    return false if @rods[from].empty?
    return true if @rods[to].empty? 
    @rods[to].last > @rods[from].last
 end

 def draw
    @rods.each do |stack, discs|
       puts stack
       discs.reverse_each do |disc|
          case disc
             when 1
                puts "  =  "
             when 2
                puts " === "
             when 3
                puts "====="
          end
       end
    end
 end

 def finished?
    return @rods[:c].size == 3
 end
end
