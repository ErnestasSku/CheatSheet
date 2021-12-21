# Some python lists

foodList = ["apple", "bannan", "cherries", "kiwi", "mango", "watermelon"]

lenghtOfList = len(foodList)

listconstructor = list(("item1", "item2", 3, False))

#It is possible to use negative numbers to access list elements
print(listconstructor[1], listconstructor[-1])

print(foodList[2:5])

listconstructor.append("Add new item")
listconstructor.insert(4, "Insert new item")

emptyList = []
#Extend works on iterable items, such as lists, tuples, dictionaries, sets
emptyList.extend(foodList)
emptyList.extend(listconstructor)

emptyList.remove(False)
#Pop deletes either last element or the specified one
emptyList.pop(2)
del emptyList[5]


#list comprehension
# Syntax:
# newlist = [expression for item in iterable if condition == True]
[print(x) for x in emptyList]

evenNumbers = [x for x in range(20) if x % 2 == 0]
evenCubed = [x**3 for x in range(20) if x % 2 == 0]

joinedLists = evenNumbers + evenCubed

tuples = [("a", 12, "D"), ("b", 10, "C"), ("c", 4, "B"), ("d", 7, "A")]
tuples.sort()
print(tuples)
tuples.sort(key = lambda x : x[1])
print(tuples)
tuples.sort(key = lambda x : x[2])
print(tuples)
