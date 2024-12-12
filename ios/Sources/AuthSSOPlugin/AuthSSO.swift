import Foundation

@objc public class AuthSSO: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return "ios -> " + value
    }
    
    @objc public func signIn(_ value: [String: Any]) -> [String: Any] {
        print(value)
        return value
    }
}
