def caesar_cipher(str, shift)
    res = ""
    limit = 0
    for i in 0...str.length
      if str[i].match?(/[A-Za-z]/)
        code = str[i].ord
        if str[i] == str[i].upcase
          limt = 90
          lower = 65
        else
          limit = 122
          lower = 97
        end
      
        shift.times do
          if code > limit
              code = lower
          end
          code += 1
        end
        res += code.chr  
       
      else
          res += str[i]
      end
    end
      
    return res
end
