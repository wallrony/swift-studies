class Person {
    var name: String?

    init() {
    }

    init(name: String?) {
        self.name = name
    }

    func speakName() {
        guard self.name != nil else {
            return
        }
        print(name!)
    }
}

class Developer: Person {
    var jobTitle: String?
    var yearsExp: Int?

    override init() {
        super.init()
    }

    init(name: String?, jobTitle: String?, yearsExp: Int?) {
        super.init(name: name)
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }

    override func speakName() {
        guard name != nil else {
            return
        }
        guard jobTitle != nil else {
            super.speakName()
            return
        }
        print("\(name!) - \(jobTitle!)")
    }
}

let rony = Developer(name: "Wallisson Rony", jobTitle: "Software Engineer", yearsExp: 5)

rony.speakName()

let emptyDev = Developer(name: "Empty Developer", jobTitle: nil, yearsExp: nil)

emptyDev.speakName()
