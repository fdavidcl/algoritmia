#!/usr/bin/env ruby 
#encoding: utf-8

# Merge sort implementation for Ruby
# https://en.wikipedia.org/wiki/Merge_sort#Top-down_implementation_using_lists

# Merges two arrays into a sorted one
def merge(left, right)
	result = []

	until left.empty? and right.empty?
		# Remove next minimum element from the corresponding
		# array and add it to result
		if right.empty? or (left.any? and left.first <= right.first)
			result << left.shift
		else
			result << right.shift
		end
	end

	result
end

# Recursively divides the array in halves and sorts it
def mergesort(array)
	# Base case
    if array.length < 2
        array
    else
    	left = mergesort array[0 .. array.length/2 - 1]
    	right = mergesort array[array.length/2 .. array.length - 1]

    	merge left, right
    end
end

puts (mergesort [8,6,7,5,3,0,9]).to_s