//数组差异查找
let array1 = [1, 2, 3, 4, 5]
let array2 = [3, 4, 5, 6, 7]

let set1 = Set(array1)
let set2 = Set(array2)

let difference1 = set1.subtracting(set2)
let difference2 = set2.subtracting(set1)

print(difference1) // 输出: [1, 2]
print(difference2) // 输出: [6, 7]

//数组合集
let array1 = [1, 2, 3, 4, 5]
let array2 = [3, 4, 5, 6, 7]

let set1 = Set(array1)
let set2 = Set(array2)

let intersection = set1.intersection(set2)

print(intersection) // 输出: [3, 4, 5]


