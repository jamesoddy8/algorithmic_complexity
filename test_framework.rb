require 'benchmark'

array = (1..100_000).map {rand}

def reverse

end

Benchmark.bm do |x|

  x.report("reverse:") {array.reverse}
  x.report("sort:") {array.sort}
end
