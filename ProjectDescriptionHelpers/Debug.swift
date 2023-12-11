import ProjectDescription

/// Creates a debug configuration
public struct Debug: ConfigurationConvertable {
    public let name: ConfigurationName
    public let settings: SettingsDictionary
    public let xcconfig: ProjectDescription.Path?
    
    /// debug configuration Initalizer
    ///
    /// - Parameters:
    ///   - name: The name of the configuration to use
    ///   - settings: The base build settings to apply
    ///   - xcconfig: The xcconfig file to associate with this configuration
    public init(
        name: String,
        settings: SettingsDictionary = [:],
        xcconfig: ProjectDescription.Path? = nil
    ) {
        self.name = ConfigurationName.configuration(name)
        self.settings = settings
        self.xcconfig = xcconfig
    }

    /// debug configuration Initalizer
    /// - Parameters:
    ///   - type: Replaces the content through the specified configuration type
    ///   - settings: The base build settings to apply
    public init(
        _ type: some ConfigurationType,
        settings: SettingsDictionary = [:]
    ) {
        self.init(name: type.rawValue, settings: settings, xcconfig: type.path)
    }
    
    public func build() -> ProjectDescription.Configuration {
        .debug(name: name, settings: settings, xcconfig: xcconfig)
    }
}
