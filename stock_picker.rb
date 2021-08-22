def stock_picker(array)
    aux = 0
    result_final = 0
    array_index = []
    array.reverse_each do |number|
        for i in array
            if(i != number)
                aux = number - i
                if(aux > result_final)
                    result_final = aux
                    array_index[0] = array.index(i)
                    array_index[1] = array.index(number)
                end
            else 
                break
            end 
        end
    end
    p array_index
end

stock_picker([17,3,6,9,15,8,6,1,10])