import ProjectDescription

/// Protocols for organizing configurations in one place
public protocol ConfigurationType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Specify the configuration path.
    var path: ProjectDescription.Path { get }
}
