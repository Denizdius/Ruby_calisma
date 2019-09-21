def Harfler_sıralaması(str)

  str_arr = str.split(" ")
  (0..str_arr.length-1).each do |x|
      str_arr[x] = str_arr[bum].split("").sort.join("")
    end
  
  return str_arr.join(" ")
         
end
         
   
   
puts Harfler_sıralamasıs(STDIN.gets)  
