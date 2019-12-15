require 'benchmark/ips'


Player = Struct.new(:id, :rating, :team_rating, :conf_rating, :bit_rank)

# setup
id = 1.step
@players = 1_000_000.times.map do
  Player.new(id.next, rand(0..10), rand(0..10), rand(0..10))
end

#now, calculate the bit rank for each player
@players.each do |p|
  p.bit_rank = p.rating << 30 |
               p.team_rating << 25 |
               p.conf_rating << 20 |
               p.id
end

# I want to sort by player rating descending,
# then team rating descending,
# then conference rating descending,
# then by id descending.
def sort_naively
  @players.group_by(&:rating).sort.reverse.map do |rb|
    rb[1].group_by(&:team_rating).sort.reverse.map do |tb|
      tb[1].group_by(&:conf_rating).sort.reverse.map do |cb|
        cb[1].group_by(&:id).sort.reverse.map do |ib|
          ib[1]
        end
      end.flatten
    end.flatten
  end.flatten
end

def sort_rank_array
  @players.sort_by do |p|
    [p.rating, p.team_rating, p.conf_rating, p.id]
  end.reverse
end

def sort_packed_int
  @players.sort_by(&:bit_rank)
end

def sort_basic
  @players.sort do |a, b|
    r = a.rating <=> b.rating
    r = a.team_rating <=> b.team_rating if r == 0
    r = a.conf_rating <=> b.conf_rating if r == 0
    r = a.id<=> b.id if r == 0
    r
  end
end

Benchmark.ips do |x|
  x.config(time: 10, warmup: 2)

  x.report("sort_naively") { sort_naively }
  x.report("sort_rank_array") { sort_rank_array }
  x.report("sort_packed_int") { sort_packed_int }
  x.report("sort_basic") { sort_basic }

  x.compare!
end
