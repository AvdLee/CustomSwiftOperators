//: [Previous](@previous)
/*:
 # Custom Postfix Operator
 ### Setup the progress view
 */
let progressView = UIProgressView(progressViewStyle: .bar)
progressView.trackTintColor = .black
progressView.progressTintColor = .orange
/*:
 ### Setup the custom prefix operator ~
 */
import UIKit
postfix operator %
postfix func % (percentage: Int) -> Float {
    return (Float(percentage) / 100)
}
/*:
 ### Use the custom operator in code
 */
progressView.progress = 20%
//: [Next](@next)
