require 'benchmark'

# array = (1..100_000).map {rand}

def shuffle(array)
  length = array.length - 1
  index = rand(0..length)

end

Benchmark.bm do |x|

  # x.report("reverse:") {array.reverse}
  x.report("shuffle:") {array.shuffle}
end

def graph
  generate_graph = Gchart.new(
    :type => 'line',
    :size => '450x500',
    :bar_colors => ['6600cc','b366ff'],
    :title => "Time Framework for Shuffle Method",
    :bg => 'EFEFEF',
    :legend => ['Shuffle'],
    :data => [shuffle],
    :filename => 'images/shuffle_method_graph.png',
    :stacked => false,
    :legend_position => 'bottom',
    :axis_with_labels => [['x'], ['y']],
    :max_value => 5,
    :min_value => 0,
    :axis_labels => [["0|20_000|40_000|60_000|80_000|100_000"]],
  )
  generate_graph.file
end

p shuffle(1234)
