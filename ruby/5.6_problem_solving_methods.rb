# 5.6 Mandatory Pairing: Solving Problems with Data Structures

# Release 0: Implement a Simple Search

sample_array = [42, 89, 23, 1]

def simple_search(array, integer)
  item_index = nil
  array.size.times do |item|
    item_index = item if array[item] == integer
  end
  return item_index
end

p simple_search(sample_array, 1)
#=> 3
p simple_search(sample_array, 24)
#=> nil

# Release 1: Calculate Fibonacci Numbers

def fibonacci_numbers(number_times)
  fibonacci_numbers = [0,1]
  (number_times-2).times do |time|
    fibonacci_numbers << (fibonacci_numbers[time] + fibonacci_numbers[time+1])
  end
  return fibonacci_numbers[-1]
end

p fibonacci_numbers(100)
#=> 218922995834555169026

# another fib method using parallel assignment & fib number maximum as 
argument
# def fibUpTo(max)
#   i1, i2 = 1, 1
#   while i1 <= max
#     yield i1
#     i1, i2 = i2, i1+i2
#   end
# end
# fibUpTo(1000) { |f| print f, " " }

# Release 2: Sort an Array
# pseudocode for insertion sort

# for i = 1 to length(A)
#     x = A[i]
#     j = i - 1
#     while j >= 0 and A[j] > x
#         A[j+1] = A[j]
#         j = j - 1
#     end while
#     A[j+1] = x
#  end for


# insertion sort on array

def insertion_sort(a)
  a.length.times do |i|
    x = a[i]
    j = i-1
    while j >= 0 && a[j] > x
      a[j+1] = a[j]
      # p a
      j = j-1
    end
    a[j+1] = x
    # p a
  end
  a
end

arr = [42, 89, 23, 1]
p insertion_sort([25,77,14])
#=> [14, 25, 77]