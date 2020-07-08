
module Stats
end

def Stats.length str
  "Довжина рядка  #{str.length} символів."
end

def Stats.most_frequent str
  counts=Array.new
  maxCount=0
  for i in (0..str.length)
    counts[i]=0
    for j in (0..str.length)
      if str[i]==str[j]
        counts[i]+=1
      end
    end
    if counts[i]>maxCount
      maxCount=counts[i]
    end
  end
  for i in (0..counts.length)
    if counts[i]==maxCount
      res=i
      break
    end
  end
  "Найчастіше зустрічається символ '#{str[i]}',  #{counts[i]} разів."
end

def Stats.char_stats str

  elements = Hash.new

  str.each_char { |e| 
    if elements.include?(e)

      elements[e]+=1
    else 

      elements[e]=1
    end
  }


  elements = elements.to_a

  elements = elements.sort{|a,b|b[1]<=>a[1]}
  elements
end
str="thequickbrownfoxjumpsoverthelazydog"
puts Stats.length(str)
Stats.char_stats(str).each do |el|
  puts "#{el[0]} #{el[1]}"
end
puts Stats.most_frequent(str)