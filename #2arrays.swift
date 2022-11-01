var ages: [Int] = [21, 55, 19, 47, 22, 37]

// ages.count
// ages.first
// ages.last

ages.append(5)
print(ages)
ages.insert(99, at: 0)
print(ages)

let reversedArray = Array(ages.reversed())

print(reversedArray)
