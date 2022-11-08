var ages = [18, 33, 55, 16, 17, 17]

// var agesSet: Set<Int> = []

var agesSet = Set(ages)

print(ages)
print(agesSet)

print(agesSet.contains(1))

agesSet.insert(1)

print(agesSet.contains(1))
