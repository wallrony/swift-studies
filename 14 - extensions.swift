import AppKit

extension String {
  func removeWhiteSpaces() -> String {
    return components(separatedBy: .whitespaces).joined()
  }
}

var str: String = "A B C D E F"
print(str.removeWhiteSpaces())
