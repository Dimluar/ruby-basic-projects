def caesar_cipher(text, shift_factor)
  array = text.split("").map do | character |
    ascii = character.ord
    shift_ascii = ascii + shift_factor

    if ascii.between?(65, 90) #A-Z
      shift_ascii = (shift_ascii - 65)  % 26 + 65 if shift_ascii > 90
    elsif ascii.between?(97, 122) #a-z
      shift_ascii = (shift_ascii - 97) % 26 + 97 if shift_ascii > 122
    else
      next character
    end

    shift_ascii.chr
  end

  array.join("")
end

p caesar_cipher("This? This is example 01.", 30)
