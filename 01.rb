input = File.read('./01-input.txt')

inventories_by_elf = input.split("\n")
  .inject([[]]) do |acc, value| 
    if value == ''
      acc << []
    else
      acc[-1] << value.to_i
    end
    acc
  end

result = nil
p maxes = inventories_by_elf.map.with_index{|ar, i| [ar.sum, i]}
puts maxes.max_by{|ar| ar[0]}
