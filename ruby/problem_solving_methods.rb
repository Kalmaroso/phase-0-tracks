def search_array(arr, number)
   arr.each do |int|
        index = 0
        if int == number
            p arr.index(number)
        else 
            puts " "
        end
        index =+ 1
    end
end

arr = [3, 5, 7, 19,54]
search_array(arr, 7)


#Release 1
def fibb(length)
    arr = [0, 1] 
    arr.each do |number|
        if arr.length != length
            next_num = arr[-2] + arr[-1]
            arr.push(next_num)
       end
    end
end

fibb(100)

#How can we verify this number is correct?
#if fibb(100).index(101) == 218922995834555169026

#Release 2
def alphabet_sort(array)
    alphabet =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", 
    	"p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   counter = 1
    until counter == 100
    new_array = array.each do |letter|
    
    	i = 1
        index_of_letter_in_array = array.index(letter)
        index_of_next_letter_in_array = index_of_letter_in_array + i 
        value_of_next_item_in_array = array[index_of_next_letter_in_array]
       
       
       until i == array[index_of_letter_in_array..-1].length
       			

       		    if 	alphabet.index(letter) > alphabet.index(value_of_next_item_in_array)

       				array[index_of_letter_in_array], array[index_of_next_letter_in_array] =
       				 array[index_of_next_letter_in_array], array[index_of_letter_in_array]
       			
       			

       			end
       			
       			i += 1 
       			index_of_next_letter_in_array = index_of_letter_in_array + i 
       			value_of_next_item_in_array = array[index_of_next_letter_in_array]
       		
       			
       			
       	end
     
       	
    end
    counter += 1
	end
	p new_array
	
end




p array_example = ["c", "e", "z", "a", "b", "l","m","a","x","y","i","h"]
 
alphabet_sort(array_example)