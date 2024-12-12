import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AuthSSOPlugin)
public class AuthSSOPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "AuthSSOPlugin"
    public let jsName = "AuthSSO"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "signIn", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = AuthSSO()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    //var thisVC: CustomViewController?
    
    @objc func signIn(_ call: CAPPluginCall) {
        
        //guard let customView = bridge?.viewController as? CustomViewController else {
        //    call.reject("Failed to cast ViewController")
        //    return
        //}
        
        //let res = customView.signIn()
        
        let res = [
            "name": "demo1",
            "pwd": "123456a@"
        ]
        
        call.resolve([
            "status": true,
            "value": implementation.signIn(res)
        ])
        
    }
}
