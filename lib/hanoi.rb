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

 def finished?
 end
end
