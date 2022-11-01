let grades = [5, 7, 9, 4]

var sum = 0;

for grade in grades {
  sum += grade
}

print("Your total school note is " + String(sum))

// Using where

var goodGradesCount = 0

for grade in grades where grade >= 7 {
  goodGradesCount += 1
}

print("You have " + String(goodGradesCount) + " good grades!")

// ranges

var randomInts: [Int] = []

for _ in 0..<5 {
  let randomNumber = Int.random(in: 0...100)
  randomInts.append(randomNumber)
}

print("Random numbers:", randomInts)
