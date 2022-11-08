
func sayGreetingsMessage(for name: String?) {
  guard name != nil else {
    print("You need to provide a name to say hello!")
    return
  }
  print("Hello \(name!)!")
}

sayGreetingsMessage(for: nil)
