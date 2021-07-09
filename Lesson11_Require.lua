print("-----多脚本执行-----")

print("-----全局变量和本地变量-----")
--全局变量
a=1
b="123"
for i=1,10 do
	c=2--这里c也是一个全局变量
end

print(c)

for i=1,10 do
	local d=2--局部变量
end
print(d)--nil




print("-----多脚本执行-----")
--关键字 require("脚本名字")
require("FirstLua")
print(testA)--FirstLua中的全局变量
print(testLocal)--FirstLua中的局部变量 nil

--require加载执行的脚本 ,只会执行一次
require("FirstLua")

print("-----脚本卸载-----")
--package.loaded["脚本名"] 判断脚本是否被执行
print(package.loaded["FirstLua"])
package.loaded["FirstLua"]=nil --卸载已经执行的脚本
print(package.loaded["FirstLua"])
require("FirstLua")--又能够执行了
require("FirstLua")


print("-----大G表-----")
-- _G表是一个总表,他讲我们声明的所有全局变量都存储在其中

for k,v in pairs(_G) do
	print(k,v)
end
--本地变量不会存到大_G表中