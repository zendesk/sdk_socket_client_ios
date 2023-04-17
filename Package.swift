// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKSocketClient",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ZendeskSDKSocketClient",
            targets: [
                "ZendeskSDKSocketClientTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskSDKLogger",
                 url: "https://github.com/zendesk/sdk_logger_ios",
                 from: "0.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKSocketClient",
            path: "ZendeskSDKSocketClient.xcframework"
        ),
        .target(name: "ZendeskSDKSocketClientTargets",
                dependencies: [
                    .target(name: "ZendeskSDKSocketClient"),
                    .product(name: "ZendeskSDKLogger", package: "ZendeskSDKLogger")
                ],
                path: "Sources")
    ]
)
