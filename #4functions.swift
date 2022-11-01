func printGreetingsMessage(name: String = "Test") {
  print("Hello " + name + "!")
}

printGreetingsMessage()

func add(firstNumber: Int, to secondNumber: Int) -> Int {
  return firstNumber + secondNumber
}

print(String(add(firstNumber: 50, to: 100)))
