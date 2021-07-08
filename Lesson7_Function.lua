print("-----函数-----")



print("-----无参无返回值-----")
--两者声明方式
function F1()
	print("F1函数")
end

F1()


F2 = function()
	print("F2函数")
end

F2()

print("\n-----有参无返回值-----")
function F3(a)
	print("参数:" .. tostring(a))
end

F3(1)
F3(true)
F3("123")

--如果传入的参数和函数的参数个数不匹配
--不会报错 会补nil或者丢弃
F3()
F3(1,2,3)



print("\n-----有返回值-----")
function F4(a)
	return a
end

temp = F4("123")
print(temp)


print("\n-----有多返回值-----")
function F4(a)
	return a,"true","111"
end


temp,temp2,temp3= F4("123")
print(temp .. temp2 .. temp3)


print("\n-----fuction 是一种数据类型-----")
f =function(  )
	
end

print(type(f))


print("\n-----lua中函数没有重载-----")

function F5()
	print("bbbbb") 
end

function F5(a)
	print("aaaaaa")
end

F5()
F5(222)
--最后一个会覆盖前一个

print("\n-----变长参数-----")
function F7( ... )
	--变长参数使用,用一个表存起来
	arg = {...}
	for i=1,#arg do
		print(arg[i])
	end
end


F7(1,2,3,"AAA")


print("\n-----函数嵌套-----")
function F8()
	return function()
		print("嵌套")
	end
end

f=F8()
f()

--闭包
function F9( x )
	return function(y)
		return x+y
	end
end

f=F9(10)
print(f(2))

