import ProjectDescription

extension ConfigurationValues {
    /// Type used to define a group of components
    public func ConfigurationGroup(
        @ConfigurationBuilder content: @escaping () -> [ProjectDescription.Configuration]
    ) -> [ProjectDescription.Configuration] {
        return content()
    }
}
