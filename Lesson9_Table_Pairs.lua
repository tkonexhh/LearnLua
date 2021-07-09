print("-----迭代器遍历-----")
--#得到长度,但是并不准备,一般不用#来遍历表

a={1,2,3,45,5,[7]=2}


print("-----ipairs迭代器遍历-----")

--ipairs
--ipairs 遍历还是从1开始往后遍历的,小于等于0的值得不到
--只能找到连续索引的键,遇到nil跳过

for i,k in ipairs(a) do
	print(i .. ":" .. k )
end



print("-----pairs迭代器遍历-----")
for i,k in pairs(a) do
	print(i .. ":" .. k )
end




--ipairs是index索引 1开始 
--pairs是全部遍历