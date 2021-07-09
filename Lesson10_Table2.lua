print("-----复杂数据类型 Table2-----")
print("-----Dictionary-----")

a = {["name"]="xhh",["age"]=16}
print(a["name"])
print(a["age"])
--还可以类似成员变量的方式 但是不能是数字 如a.1
print(a.name)
print(a.age)

--修改
a.name="wrr"
print(a.name)

--添加
a.sex="male"
print(a.sex)

--删除
a.sex=nil
print(a.sex)



print("-----Dictionary 遍历-----")
--一定要用pairs
for k,v in pairs(a) do
	print(k,v)
end

print("-----类和结构体-----")
--默认没有面向对象
--用表来表现类的概念

--成员变量 成员函数
Student = 
{ 
	age = 1,
	sex ="male",

	AddAge = function()
		--指定作用域
		Student.age = Student.age + 1
	end
}

Student.name = "XHH"
Student.Study = function()
	print("学习")
end

function Student.Study2()
	print("学习2")
end

Student.AddAge()
print(Student.age)
Student.Study()
Student.Study2()
--lua中的类 就像一个类中有静态变量和静态方法


Student.Learn = function(s)
	print(s.sex)
end


Student.Learn(Student)
Student:Learn()
--lua中 . : 的区别
--: 会默认把调用者当做第一个参数传入



print("-----self-----")
function Student:Speak()
	print(self.name .. " Speak")
end

Student:Speak()


print("-----表的公共操作-----")


t1 = {{age = 1 , name = "1111"},{age = 2 ,name = "2222"}}
t2 = {name = "xhh",sex = "male"}

print("-----插入-----")
--插入
table.insert(t1,t2)

for k,v in pairs(t1) do
	print(t1[k])
end


--删除指定元素 
--remove 传表进来 会移除最后一个索引内容
table.remove(t1)
print(t1[1].name)
print(t1[3])

--remove方法 传两个参数 第二个参数表示索引
table.remove(t1,1)
print(t1[1].name)


print("-----排序-----")
t2={5,2,9,7,1,6}
print("-----升序-----")
table.sort( t2 )
for k in pairs(t2) do
	print(t2[k])
end

print("-----降序-----")
table.sort(t2, function(a,b)
		if a > b then
			return true
		end
	end)

for k in pairs(t2) do
	print(t2[k])
end


print("-----拼接-----")
tb={"123","456","6798"}
--拼接表中元素 返回字符串
str=table.concat( tb, ",")
print(str)



