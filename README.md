# 👨🏻‍💻 SwiftEntitlements

📱 This is a simple Swift utility package that reads application entitlements for you. 

## Features

✅ Reading entitlements from iOS Application binary

### Note
⚠️ The library currently does not support reading entitlements from fat Mach-O file. If that is your use-case - please let me know. 

## Usage

Library exposes ``entitlements`` property on UIApplication instances. 

```
public extension UIApplication {
    public var entitlements: Entitlements { get }
}
```
Library provides a set of predefines keys for most common entitlements keys as described in [Apple docs](https://developer.apple.com/documentation/bundleresources/entitlements). Please see ```Entitlements.Keys``` to check available options.

Instance of Entitlements class exposes simple API for getting values
```
let value = UIApplication.shared.entitlements.value(forKey: .apsEnvironment) as? String
```
If the required key is not present - it could be easily defined.
```
let myAwesomeKey = Entitlements.Key("some.awesome.key")
let value = UIApplication.shared.entitlements.value(forKey: myAwesomeKey)
```

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method. I am open for changes, fixes and suggestions. 

## License 

 SwiftEntitlements is released under the MIT license. See LICENSE for details.
