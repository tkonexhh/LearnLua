print("-----复杂数据类型 Table1-----")
--所有的复杂类型都是table
print("-----数组-----")

a = {1,2,true,"5555",5,6,7,nil}
--末尾是nil不算入长度
print(#a)
a = {1,2,nil,"5555",5,6,7,nil,9}
print(#a)


print("-----数组遍历-----")
--索引从1开始
for i=1,#a do
	print(a[i])
end


print("\n-----二维数组-----")
a = {{1,2,3},{4,5,6}}
print(a[1][1])


print("\n-----二维数组遍历-----")
for i=1,#a do
	b=a[i]
	for j=1,#b do
		print(b[j])
	end
end


print("\n-----自定义索引-----")
a={[0]=1,2,4,[-1]=4,5}
for i=-1,#a do
	print(a[i])
end
print("len:" .. #a)