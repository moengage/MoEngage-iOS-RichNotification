// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngageRichNotification",
    products: [
        .library(
            name: "MoEngageRichNotification",
            targets: ["MoEngageRichNotificationSPM","MoEngageRichNotification"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", from: "9.13.0"),
    ],
    targets: [
        .target(name: "MoEngageRichNotificationSPM", dependencies: ["MoEngage-iOS-SDK"], path: "Sources/..",exclude: ["MoEngageRichNotification.podspec", "README.md","./Frameworks/MoEngageRichNotification.xcframework", "LICENSE","CHANGELOG.md", "Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageRichNotification",path: "./Frameworks/MoEngageRichNotification.xcframework")
    ]
)
