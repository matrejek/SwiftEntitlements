//
//  Created by Mateusz Matrejek
//

import Foundation
import UIKit

public extension UIApplication {

    var entitlements: Entitlements {
        let bundle = Bundle.main
        guard let executableName = bundle.infoDictionary?["CFBundleExecutable"] as? String else {
            return .empty
        }
        guard let executablePath = bundle.path(forResource: executableName, ofType: nil) else {
            return .empty
        }
        do {
            return try EntitlementsReader(executablePath).readEntitlements()
        } catch {
            debugPrint("Reading entitlements failed: \(error.localizedDescription)")
            return .empty
        }
    }
}
