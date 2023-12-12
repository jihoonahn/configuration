import ProjectDescription

/// Creates a release configuration
public struct Release: ConfigurationConvertable {
    public let name: ConfigurationName
    public let settings: SettingsDictionary
    public let xcconfig: ProjectDescription.Path?

    /// release configuration Initalizer
    ///
    /// - Parameters:
    ///   - name: The name of the configuration to use
    ///   - settings: The base build settings to apply
    ///   - xcconfig: The xcconfig file to associate with this configuration
    public init(
        name: ConfigurationName,
        settings: SettingsDictionary = [:],
        xcconfig: ProjectDescription.Path? = nil
    ) {
        self.name = name
        self.settings = settings
        self.xcconfig = xcconfig
    }

    /// release configuration Initalizer
    /// - Parameters:
    ///   - type: Replaces the content through the specified configuration type
    ///   - settings: The base build settings to apply
    public init(
        _ type: some ConfigurationsType,
        settings: SettingsDictionary = [:]
    ) {
        self.init(name: type.configurationName, settings: settings, xcconfig: type.path)
    }

    public func build() -> ProjectDescription.Configuration {
        .release(name: name, settings: settings, xcconfig: xcconfig)
    }
}
