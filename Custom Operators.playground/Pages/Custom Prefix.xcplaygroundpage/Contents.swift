/*:
 # Custom Prefix Operator
 ### Setup the formatting
 */
import Foundation
let currencyFormatter = NumberFormatter()
currencyFormatter.numberStyle = .currency
currencyFormatter.locale = Locale.current

let priceString = currencyFormatter.string(from: 9999.99)!
print(priceString) // Displays $9,999.99 in the current locale, for example $ dollars.
/*:
 ### Setup the custom prefix operator ~
 */
prefix func ~ (value: NSNumber) -> String {
    let currencyFormatter = NumberFormatter()
    currencyFormatter.numberStyle = .currency
    currencyFormatter.locale = Locale.current

    return currencyFormatter.string(from: value)!
}
/*:
 ### Use the custom operator in code
 */
let decimalInputPrice: String = ~843.32
print(decimalInputPrice) // Prints: $843.32

let intInputPrice: String = ~300
print(intInputPrice) // Prints: $300.00
//: [Next](@next)
