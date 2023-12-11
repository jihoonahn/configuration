import ProjectDescription

/// Protocols for organizing configurations in one place
public protocol ConfigurationsType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Specify the configuration path.
    var path: ProjectDescription.Path { get }
}
