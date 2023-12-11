import ProjectDescription

@resultBuilder public enum ConfigurationBuilder {
    public static func buildBlock() -> [ProjectDescription.Configuration] {
        []
    }

    public static func buildBlock(_ components: ConfigurationConvertable...) -> [ProjectDescription.Configuration] {
        components.map { $0.build() }
    }

    public static func buildArray(_ groups: [ConfigurationConvertable]) -> [ProjectDescription.Configuration] {
        groups.map { $0.build() }
    }

    public static func buildOptional(_ wrapped: [ConfigurationConvertable]?) -> [ProjectDescription.Configuration]? {
        wrapped?.map { $0.build() } ?? []
    }
}
