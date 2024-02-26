arr=[]
arr1=[]
for i in 0..2 do
    print "Enter #{i+1} digit"
    arr.push(gets.chop.to_i)
end

for i in arr do
    if(i<10)
        p "true"
    else
        p "false"
    end
end
