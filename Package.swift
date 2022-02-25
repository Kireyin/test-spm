// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "LSUniversalSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "LSUniversalSDK",
            targets: ["LSUniversalSDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/iziz/libPhoneNumber-iOS.git", .upToNextMajor(from: "0.9.0")),
    ],
    targets: [
        .binaryTarget(name: "LSUniversalSDK",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "LiveTranslation",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "MediaCapture",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "AdvancedAnnotations",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "Multiparty",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "SCWormhole",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .binaryTarget(name: "Permissions",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/sdk.zip",
                      checksum: "00da08bf7592a95933fd01966e7bae9f85d5fcd12772092518b74fc83619e962"),
        .target(name: "LSUniversalSDKTarget",
                dependencies: [
                    .target(name: "LSUniversalSDK"),
                    .target(name: "LiveTranslation"),
                    .target(name: "MediaCaptureTarget"),
                    .target(name: "AdvancedAnnotationsTarget"),
                    .target(name: "Multiparty"),
                    .target(name: "SCWormhole")
                ]),
        .target(name: "MediaCaptureTarget",
                dependencies: [
                    .target(name: "MediaCapture"),
                    .target(name: "Permissions")
                ]),
        .target(name: "AdvancedAnnotationsTarget",
                dependencies: [
                    .target(name: "AdvancedAnnotations"),
//                    .package(url: "https://github.com/iziz/libPhoneNumber-iOS.git", .upToNextMajor(from: "0.9.0")),
                ])
    ]
)
