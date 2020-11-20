//: [Previous](@previous)
/*:
 # Custom Compound Assignment Operator
 ### Setup the structures
 */
struct Team {
    let title: String
    private(set) var members: [Member]

    mutating func add(_ member: Member) {
        members.append(member)
    }
}

struct Member: CustomDebugStringConvertible {
    let name: String

    var debugDescription: String { name }
}
/*:
 ### Adding a member without a custom operator
 */
var team = Team(title: "Developers 🔵🔴⚪️", members: [Member(name: "Antoine 🇳🇱")])

let newMember = Member(name: "Donny 🇳🇱")
team.add(newMember)
/*:
 ### Setup the custom Compound Assignment Operator +=
 */
extension Team {
    static func += (lhs: inout Team, rhs: Member) {
        lhs.add(rhs)
    }
}
/*:
 ### Use the custom operator in code
 */
let anotherMember = Member(name: "Vincent 🇫🇷")
team += anotherMember
print(team.members)
//: [Next](@next)
