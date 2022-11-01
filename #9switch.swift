enum Phone: String {
  case Android = "Good open one"
  case IPhone = "Meeeee... weird?"
  case Nokia = "humble... humble! Cannot be broken"
  case Pixel = "A good one, maybe"
}

func getPhoneDescription(of phone: Phone) {
  switch phone {
  case .Android:
    print("Good open one")
    break;
  case .IPhone:
    print("Meeeee... weird?")
    break;
  case .Nokia:
    print("humble... humble! Cannot be broken")
    break;
  case .Pixel:
    print("A good one, maybe")
    break;
  }
}

getPhoneDescription(of: .IPhone)

func determinePlayerLeague(from rank: Int) {
  switch rank {
    case ...0:
      print("Play some times to determine your league!")
    case 1..<50:
      print("You're in BRONZE League!")
    case 50..<100:
      print("You're in SILVER League!")
    case 100..<150:
      print("You're in GOLD League!")
    default:
      print("You're in DIAMOND League!")
  }
}

determinePlayerLeague(from: -123)
