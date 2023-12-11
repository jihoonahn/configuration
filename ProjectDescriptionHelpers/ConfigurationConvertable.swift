import ProjectDescription

/// Convert Configuration Type
public protocol ConfigurationConvertable {
    func build() -> ProjectDescription.Configuration
}

extension ProjectDescription.Configuration: ConfigurationConvertable {
    public func build() -> ProjectDescription.Configuration {
        return self
    }
}
