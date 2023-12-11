// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "configuration",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "tuist-configuration",
            targets: ["ConfigurationCLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/tuist/projectdescription", from: "3.34.0"),
    ],
    targets: [
        .executableTarget(name: "ConfigurationCLI"),
        .target(
            name: "Configuration",
            dependencies: [
                .product(name: "ProjectDescription", package: "ProjectDescription"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "ConfigurationTests",
            dependencies: [
                "Configuration"
            ]
        ),
    ]
)
