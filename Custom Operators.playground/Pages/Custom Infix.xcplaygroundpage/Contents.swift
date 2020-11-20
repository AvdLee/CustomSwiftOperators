//: [Previous](@previous)
/*:
 # Custom Infix Operator
 ### Setup the progress view
 */
let firstNumbers:  Set<Int> = [1, 4, 5]
let secondNumbers: Set<Int> = [1, 4, 6]
/*:
 ### Setup the Custom Infix Operator ~
 See [Operator Declarations](https://developer.apple.com/documentation/swift/swift_standard_library/operator_declarations) for all precedence options.
 */
infix operator +-: AdditionPrecedence
extension Set {
    static func +- (lhs: Set, rhs: Set) -> Set {
        return lhs.union(rhs)
    }
}
/*:
 ### Use the custom operator in code
 */
let uniqueNumbers = firstNumbers +- secondNumbers
print(uniqueNumbers)
//: [Next](@next)
