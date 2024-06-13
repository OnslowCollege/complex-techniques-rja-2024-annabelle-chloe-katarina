// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CombinedProject",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        // Dependencies from both packages.
        .package(url: "https://github.com/pvieito/PythonKit.git", .exact("0.3.1")),
        .package(url: "https://github.com/OnslowCollege/OCGUI.git", .exact("0.0.6")),
        .package(url: "https://github.com/vapor/vapor", from: "4.32.0"),
        .package(url: "https://github.com/vapor/leaf", .exact("4.0.0-tau.1")),
        .package(url: "https://github.com/vapor/leaf-kit", .exact("1.0.0-tau.1.1")),
    ],
    targets: [
        // Targets from both packages.
        .executableTarget(
            name: "OCProgram",
            dependencies: [
                .product(name: "PythonKit", package: "PythonKit"),
                .product(name: "OCGUI", package: "OCGUI")
            ],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        ),
        .target(name: "App", dependencies: [
            .product(name: "Leaf", package: "leaf"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App"),
            .product(name: "XCTVapor", package: "vapor"),
        ])
    ]
)
