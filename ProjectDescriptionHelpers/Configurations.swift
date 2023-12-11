import ProjectDescription
import Foundation

/// A property wrapper for configurations.
///
/// All Configurations are stored in  ``ConfigurationValues`` and one uses this property wrapper.
///
/// ```swift
/// @Configurations(\.default) var configuration
/// ```

@propertyWrapper
public struct Configurations: @unchecked Sendable {
    private let keyPath: KeyPath<ConfigurationValues, [ProjectDescription.Configuration]>
    
    /// Creates a configuration property to read the specified key path.
    public init(_ keyPath: KeyPath<ConfigurationValues, [ProjectDescription.Configuration]>) {
        self.keyPath = keyPath
    }
    
    public var wrappedValue: [ProjectDescription.Configuration] {
        let current = ConfigurationValues.current
        return ConfigurationValues.$current.withValue(current) {
            ConfigurationValues.current[keyPath: self.keyPath]
        }
    }
}
