def caesar_cipher(string,times)
    newTimes = times%25
    newArray = []
    stringArray = string.split(//)
    stringArray.each do |letter|
    code = letter.ord
       if code.between?(65, 90) || code.between?(97, 122)
          newCode = code - newTimes
          if newCode < 65
            newLetter = 90 - (65 - newCode)
            newArray.push(newLetter.chr)
          elsif code.between?(97, 122) && newCode < 97
            newLetter = 122 - (97 - newCode)
            newArray.push(newLetter.chr)
          else
            newArray.push(newCode.chr)
          end
       else
           newArray.push(letter)
       end
    end
    newString = newArray.join
    return newString
end