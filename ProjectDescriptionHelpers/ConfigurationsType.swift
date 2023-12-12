import ProjectDescription

/// Protocols for organizing configurations in one place
public protocol ConfigurationsType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Specify the configuration path.
    var path: ProjectDescription.Path { get }

    /// Gets the name of the registered configuration.
    var configurationName: ConfigurationName { get }
}

extension ConfigurationsType {
    public var configurationName: ConfigurationName {
        ConfigurationName(stringLiteral: rawValue)
    }
}
