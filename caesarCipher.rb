alphabet = ("a".."z").to_a

def encrypt(string, translate, alpha)
    string_array = string.split("")
    translated_array = string_array.map do |letter|
        if alpha.include?(letter)
            index_of_letter = alpha.index(letter)
            index_of_letter += translate
            alpha[index_of_letter]
        else
            letter
        end
    end
    translated_array.join
end

p encrypt("jane!", 1, alphabet)