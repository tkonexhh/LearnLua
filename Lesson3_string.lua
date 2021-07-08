print("-----string-----")

s = "aaa"
print("\n使用# 来计算字符串长度")
print(#s)

print("\n使用转义字符")
print("123\n123")


print("\n多行字符")
s = [[
1
2
3]]
print(s)



print("\n使用.. 来连接字符串")
print(111 .. 222)

print(string.format(":%d",2222))
print(string.format(":%a","2222"))
print(string.format(":%s",222 .. 2))
--%d 与数字拼接


print("\n其他类型转字符串")

a = true
print(tostring(a))


print("\nstring公共方法")
s="Abscdgsd"
--全部大写
print(string.upper(s)) 
--全部小写
print(string.lower(s))
--翻转字符串
print(string.reverse(s))
--索引查找
print(string.find(s,"cd"))  --返回起始位置 结束位置
--截取字符串
print(string.sub(s,3))  --默认到最后
print(string.sub(s,3,5)) -- 重载 取范围
--字符串重复
print(string.rep(s,2))
--字符串替换修改
print(string.gsub(s,"sc","**")) --返回值1 修改后的字符串  返回值2 修改次数
--字符转ASCII码
a = (string.byte("ABC",1)) --参数2 是下标
print(a)
--ASCII码转字符
print(string.char(a))
