# Configuration

<p>
  <img src="https://img.shields.io/badge/Swift-5.9-f05318.svg" />
  <img src="https://img.shields.io/badge/tuist-plugin-blue.svg" />
  <img alt="GitHub" src="https://img.shields.io/github/license/jihoonahn/configuration">
</p>

Configuration Tuist plugin available in Tuist.

## Installation

In order to tell Tuist you'd like to use Configuration plugin in your project follow the instructions that are described in [Tuist documentation.](https://docs.tuist.io/plugins/using-plugins)

Add the plugin to `Config.swift`.
```swift
import ProjectDescription

let config = Config(
    plugins: [
        .git(url: "https://github.com/jihoonahn/configuration", tag: "vTAG")
    ]
)
```

## Using

Then import the `Configuration` from thr location you want to use.

```swift
import Configuration
```

It inherits the `ConfigurationType` and brings together common configuration types in one place.

```swift
enum AppConfiguration: String, ConfigurationType {
    case dev
    case prod

    var path: Path {
        ...
    }
}
```

And create a configuration in `Configuration Values`.

```swift
extension ConfigurationValues {
    var `default`: [ProjectDescription.Configuration] {
        ConfigurationGroup {
            Debug(AppConfiguration.dev)
            Release(AppConfiguration.prod)
        }
    }
}
```

You can import and use the configuration using keypath where you want to use it.

```swift
@Configuration(\.default) var configuration
```

## Support later
- docc documentation

## License
**configuration** is under MIT license. See the [LICENSE](https://github.com/Jihoonahn/configuration/blob/main/LICENSE) file for more info.
