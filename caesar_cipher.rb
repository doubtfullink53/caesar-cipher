def caesar_cipher (string, shift_factor = 1)

    numbers_letters = string.chars.map { |c| c.ord }
    shifted_letters = numbers_letters.map { |c| c + shift_factor }
    shifted_letters.map { |character| character.chr }.join
end



puts caesar_cipher("What a string!", 6)