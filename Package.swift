// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "LSUniversalSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "LSUniversalSDK",
            targets: ["LSUniversalSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/iziz/libPhoneNumber-iOS.git", .upToNextMajor(from: "0.9.0")),
        .package(url: "https://github.com/Kireyin/SVGgh.git", .branch("master")),
    ],
    targets: [
        .binaryTarget(name: "LSUniversalSDK",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/LSUniversalSDK.xcframework.zip",
                      checksum: "fe2a238dc47fa08083e5244ba3a878ecf88ecb3c043b9a6b1fdb0325d0147ffb"),
        .binaryTarget(name: "LiveTranslation",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/LiveTranslation.xcframework.zip",
                      checksum: "1db8e6c7b3fa77898fb31c9659a8c4e119c22999fad51dec90caf9c9503e5231"),
        .binaryTarget(name: "MediaCapture",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/MediaCapture.xcframework.zip",
                      checksum: "12a105e957117d4c0468ca076b01058f38ae35ff80dc2d6d698cdc07f915b5b9"),
        .binaryTarget(name: "AdvancedAnnotations",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/AdvancedAnnotations.xcframework.zip",
                      checksum: "cc232387f6f515bd955aef01b9f157e9083b266a2f1e1ceef70319a4725e3768"),
        .binaryTarget(name: "Multiparty",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/Multiparty.xcframework.zip",
                      checksum: "b2daad489c44103d3bc59f6d5b4f20f7eb5f2cd9f67519a2b40456e92dc453bb"),
        .binaryTarget(name: "SCWormhole",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/SCWormhole.xcframework.zip",
                      checksum: "a94feb815eea58626d601a9442c356aa9fd636c3b545505829518dde80b3d4ef"),
        .binaryTarget(name: "Permissions",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/Permissions.xcframework.zip",
                      checksum: "9f22c826b2f1655a3df94bd08db2890c68b8eedbf0c4c02aed4dd73c297a9d2e")
    ]
)
