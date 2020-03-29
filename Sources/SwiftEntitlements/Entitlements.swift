//
//  Created by Mateusz Matrejek
//

import Foundation

public class Entitlements {

    public struct Key {

        let rawKey: String

        public init(_ name: String) {
            self.rawKey = name
        }

        public static let autofillCredentialProvider = Key("com.apple.developer.authentication-services.autofill-credential-provider")
        public static let signWithApple = Key("com.apple.developer.applesignin")
        public static let contacts = Key("com.apple.developer.contacts.notes")
        public static let classKit = Key("com.apple.developer.ClassKit-environment")
        public static let automaticAssesmentConfiguration = Key("com.apple.developer.automatic-assessment-configuration")
        public static let gameCenter = Key("com.apple.developer.game-center")
        public static let healthKit = Key("com.apple.developer.healthkit")
        public static let healthKitCapabilities = Key("com.apple.developer.healthkit.access")
        public static let homeKit = Key("com.apple.developer.homekit")
        public static let iCloudDevelopmentContainersIdentifiers = Key("com.apple.developer.icloud-container-development-container-identifiers")
        public static let iCloudContainersEnvironment = Key("com.apple.developer.icloud-container-environment")
        public static let iCloudContainerIdentifiers = Key("com.apple.developer.icloud-container-identifiers")
        public static let iCloudServices = Key("com.apple.developer.icloud-services")
        public static let iCloudKeyValueStore = Key("com.apple.developer.ubiquity-kvstore-identifier")
        public static let interAppAudio = Key("inter-app-audio")
        public static let networkExtensions = Key("com.apple.developer.networking.networkextension")
        public static let personalVPN = Key("com.apple.developer.networking.vpn.api")
        public static let apsEnvironment = Key("aps-environment")
        public static let appGroups = Key("com.apple.security.application-groups")
        public static let keychainAccessGroups = Key("keychain-access-groups")
        public static let dataProtection = Key("com.apple.developer.default-data-protection")
        public static let siri = Key("com.apple.developer.siri")
        public static let passTypeIDs = Key("com.apple.developer.pass-type-identifiers")
        public static let merchantIDs = Key("com.apple.developer.in-app-payments")
        public static let wifiInfo = Key("com.apple.developer.networking.wifi-info")
        public static let externalAccessoryConfiguration = Key("com.apple.external-accessory.wireless-configuration")
        public static let multipath = Key("com.apple.developer.networking.multipath")
        public static let hotspotConfiguration = Key("com.apple.developer.networking.HotspotConfiguration")
        public static let nfcTagReaderSessionFormats = Key("com.apple.developer.nfc.readersession.formats")
        public static let associatedDomains = Key("com.apple.developer.associated-domains")
        public static let maps = Key("com.apple.developer.maps")
        public static let driverKit = Key("com.apple.developer.driverkit.transport.pci")
    }

    static let empty: Entitlements = Entitlements([:])

    private let values: [String: Any]

    init(_ values: [String: Any]) {
        self.values = values
    }

    public func value(forKey key: Entitlements.Key) -> Any? {
        values[key.rawKey]
    }

    class func entitlements(from data: Data) -> Entitlements {
        guard let rawValues = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String: Any] else {
            return .empty
        }
        return Entitlements(rawValues)
    }
}
