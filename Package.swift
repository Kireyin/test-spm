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
        .package(url: "https://github.com/Kireyin/SVGgh.git", .branch("master")),
    ],
    targets: [
        .binaryTarget(name: "LSUniversalSDK",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/LSUniversalSDK.xcframework.zip",
                      checksum: "cd50cb7e44e324fff194cd725919ce2293f5fd772d79dcd01e1f2c2324de58d0"),
        .binaryTarget(name: "LiveTranslation",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/LiveTranslation.xcframework.zip",
                      checksum: "b84b73489a74d9f34c681cf24399bb912d68a802c49cff659a53da5c2513b823"),
//        .binaryTarget(name: "MediaCapture",
//                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/MediaCapture.xcframework.zip",
//                      checksum: "12a105e957117d4c0468ca076b01058f38ae35ff80dc2d6d698cdc07f915b5b9"),
        .binaryTarget(name: "AdvancedAnnotations",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/AdvancedAnnotations.xcframework.zip",
                      checksum: "a49658fdae107704863690735be6e566692c3c26aa1bb76b130314f976a8ab17"),
        .binaryTarget(name: "Multiparty",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/Multiparty.xcframework.zip",
                      checksum: "02a77d1d2f9dc40a336b0ae0ce46f6b6a472e10a38feae87021e21b048628691"),
//        .binaryTarget(name: "SCWormhole",
//                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/SCWormhole.xcframework.zip",
//                      checksum: "a94feb815eea58626d601a9442c356aa9fd636c3b545505829518dde80b3d4ef"),
//        .binaryTarget(name: "Permissions",
//                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0/Permissions.xcframework.zip",
//                      checksum: "9f22c826b2f1655a3df94bd08db2890c68b8eedbf0c4c02aed4dd73c297a9d2e"),
        .target(name: "LSUniversalSDKTarget",
                dependencies: [
                    .target(name: "LSUniversalSDK"),
                    .target(name: "LiveTranslation"),
//                    .target(name: "MediaCaptureTarget"),
                    .target(name: "AdvancedAnnotationsTarget"),
                    .target(name: "Multiparty"),
//                    .target(name: "SCWormhole")
                ],
               path: "LSUniversalSDKTarget"),
//        .target(name: "MediaCaptureTarget",
//                dependencies: [
//                    .target(name: "MediaCapture"),
//                    .target(name: "Permissions")
//                ],
//                path: ""),
        .target(name: "AdvancedAnnotationsTarget",
                dependencies: [
                    .target(name: "AdvancedAnnotations"),
                    "SVGgh"
                ],
               path: "LSUniversalSDKTarget")
    ]
)
