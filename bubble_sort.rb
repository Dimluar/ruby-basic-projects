def bubble_sort(data)
  def complete_one_instance(array)
    sorted_data = array
    array.each.with_index do |value, index|
      unless index == array.length - 1
        if value > sorted_data[index + 1]
        sorted_data[index], sorted_data[index + 1] =
        sorted_data[index + 1], sorted_data[index]
        end
      end
    end
    sorted_data
  end
end

p bubble_sort([4,3,78,2,0,2])
