sayilar = [5,1,6,2,4,3,9,3,7]

# # Bubble Sort
# degisim_adedi = 1
# degisim = true

# while degisim
#   degisim = false
#   sayac = 0
#   while sayac < sayilar.length - 1
#     if sayilar[sayac] > sayilar[sayac+1]
#       sayilar[sayac], sayilar[sayac+1] = sayilar[sayac+1], sayilar[sayac]
#       # temp = sayilar[sayac]
#       # sayilar[sayac] = sayilar[sayac+1]
#       # sayilar[sayac+1] = temp
#       degisim = true
#       pp sayilar      
#     end
#     sayac += 1
#   end
# end

sayac = 0

while true
  if sayilar[sayac] > sayilar[sayac+1]
      sayilar[sayac], sayilar[sayac+1] = sayilar[sayac+1], sayilar[sayac]
      degisim = true
      pp sayilar
  end
  sayac += 1
  if sayac >= sayilar.length - 1
    sayac = 0 
    break unless degisim
    degisim = false
  end
end

pp sayilar
