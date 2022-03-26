def caesar_cipher(str, shift = 1)
# Array of lowercase alphabet
    alphabet_low = ("a".."z").to_a
# Array of Uppercase Alphabet
    alphabet_up = ("A".."Z").to_a
# Variable for final string
    caesar = ""

    # Goes through the letters in the string and returns the shifted letters
    str.each_char do |letter|
    # Check if there is a space in he string, if so add that space back to the string
        if letter == " "
            caesar += " "
        elsif 
    # Check if there is a uppercase letter, return back the shifted uppercase letter
            old_idx = alphabet_up.find_index(letter)
            new_idx = ( old_idx + shift ) % alphabet_up.count
            caesar += alphabet_up[new_idx]       
        else
    # Check if there is a lowercase letter, return back the shifted lowercase letter
            old_idx = alphabet_low.find_index(letter)
            new_idx = ( old_idx + shift )  % alphabet_low.count
            caesar += alphabet_low[new_idx]
        end
    end
    
    caesar
end
