# require "prime"

n = 600_851_475_143
(Math.sqrt(n).to_i).downto(2) do |bolen|
    if n % bolen == 0
        asal =true
        2.upto(Math.sqrt(bolen)) do |sayac|
            if bolen % sayac == 0
                asal =false
                break
            end
        end
        if asal
            puts "En büyük bölen = #{bolen}"
            return
        end
    end
end