def caesar_cipher (string, shift_factor = 1)
    alphabet_non_capitilized = Array('a'..'z')
    alphabet_capitilized = Array('A'..'Z')


    non_capitilized  = Hash[alphabet_non_capitilized.zip(alphabet_non_capitilized.rotate(shift_factor))]
    capitilized  = Hash[alphabet_capitilized.zip(alphabet_capitilized.rotate(shift_factor))]


    encrypted_merge = non_capitilized.merge(capitilized)

    string.chars.map { |c| encrypted_merge.fetch(c, c) }.join
end


puts caesar_cipher("What a string!", 6)