import Foundation

/// A collection of globally available configuration.
///
/// ```swift
/// extension ConfigurationValues {
///     var default: [ProjectDescription.Configuration] {
///         ...
///     }
/// }
/// ```
public struct ConfigurationValues: Sendable {
    @TaskLocal public static var current = Self()
    //MARK: - Initializer
    /// Creates a configuration values instance.
    public init() {}
}
