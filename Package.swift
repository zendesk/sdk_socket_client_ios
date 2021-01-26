// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKSocketClient",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskSDKSocketClient",
            targets: [
                "ZendeskSDKSocketClient"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKSocketClient",
            path: "ZendeskSDKSocketClient.xcframework"
        )
    ]
)
