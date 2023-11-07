def bubble_sort(data)
  def complete_one_instance(array)
    completed = true
    sorted_data = array

    array.each.with_index do |value, index|
      unless index == array.length - 1
        if value > sorted_data[index + 1]
        sorted_data[index], sorted_data[index + 1] =
        sorted_data[index + 1], sorted_data[index]

        completed = false
        end
      end
    end

    [sorted_data, completed]
  end

  completed = false
  until completed
    sorted_data, completed = complete_one_instance(data)
  end

  sorted_data
end

p bubble_sort([4,3,78,2,0,2])
