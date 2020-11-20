//: [Previous](@previous)
/*:
 # Custom Emoji Operator
 ### Setup the custom operator
 */
extension String {
    static func + (lhs: String, rhs: String) -> String {
        switch (lhs, rhs) {
        case ("🛹", "❄️"):
            return "🏂"
        case ("😬", "❄️"):
            return "🥶"
        case ("😢", "🔥"):
            return "🥵"
        case ("🥕", "🥬"):
            return "🥬"
        case ("🥬", "🥒"):
            return "🥒"
        case ("🥒", "🍅"):
            return "🥗"
        case ("🧔", "💈"):
            return "👶🏻"
        case ("🦏", "🌈"):
            return "🦄"
        case ("🔨", "🔧"):
            return "🛠"
        default:
            print("\(lhs) and \(rhs) not matched")
            return "⁉️"
        }
    }
}
/*:
 ### Making use of the custom operator
 */
print("🛹" + "❄️")
print("😬" + "❄️")
print("😢" + "🔥")
print("🥕" + "🥬" + "🥒" + "🍅")
print("🧔" + "💈")
print("🦏" + "🌈")
print("🔨" + "🔧")
