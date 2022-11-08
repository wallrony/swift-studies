enum AccountRoles: String {
  case UnAuth = "Not Authenticated"
  case Administrator = "Admin"
  case Student = "Student"
  case Teacher = "Teacher"
}

func getAccountRoleName(of role: AccountRoles) {
  print(role.rawValue)
}

getAccountRoleName(of: .UnAuth)
