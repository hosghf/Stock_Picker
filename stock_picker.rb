def stock_picker(arr=[])
  c=arr.length-1
  dif_main=0
  arr2=[]
  #loop 1
  (0...c).each do |x|
  	f1=x+1
  	#loop 2
  	(f1..c).each do |y|
  	  dif=arr[y]-arr[x]
  	  if(dif>dif_main)
  	  	dif_main=dif
  	  end
  	end
  	arr2.push(dif_main)
  end
  
  mx=arr2.max 
  index_buy=arr2.index mx
  sell=arr[index_buy]+arr2[index_buy]
  index_sell=arr.index(sell)
  return [index_buy,index_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])