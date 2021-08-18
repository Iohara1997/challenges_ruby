def caesar_cipher(string, number)
    string_bytes = string.bytes
    translation = []
    string_bytes.each do |num|
        dec = num + number
        if((num < 64) or (num > 122))
            translation.push(num)
        elsif((num > 64) and (num < 91) and (dec > 90))
            dec = dec - 90
            dec = 64 + dec
            translation.push(dec)
        elsif((num > 96) and (num < 123) and (dec > 122))
            dec = dec - 122
            dec = 96 + dec
            translation.push(dec)
        else 
            translation.push(dec)
        end
    end
    puts translation.pack('c*')    
end

caesar_cipher("What a string!", 5)