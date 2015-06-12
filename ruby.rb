def fact(n)
x=1
for i in 1..n
x=x*i
end
return x
end

def pos(n)
arr=n.to_s.chars
tarr=arr.sort
pos = 0
for i in 0..arr.length-2
f= find_index(tarr, arr[i])
d = fact(arr.length-i-1)*(f-1)
tarr.delete(arr[i])
pos = pos + d	
end
return pos
end

def find_number(position,n)
arr=n.to_s.chars
arr=arr.sort
s=""
x=arr.length
for i in 0..x-2
zv = position % fact(x-i-1)
po= position/fact(x-i-1)
s = s+arr[po]
arr.delete(arr[po])
position=zv
end
s=s+arr[0]
return s
end

def find_index(arr,index)
for i in 0..arr.length-1
if (arr[i]==index) then return i+1
end
end
end
t= gets
for i in 1..t.to_i
n = gets
x = n.strip.split(/\s+/)
g = pos(x[0])
puts find_number(g+x[1].to_i, x[0])
end
