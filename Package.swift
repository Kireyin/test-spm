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
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/LSUniversalSDK.zip",
                      checksum: "6cf78d14fa0e15ac68e1ebd838ab234b50847893cf168af478e2bc9062fa6c80"),
        .binaryTarget(name: "LiveTranslation",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/LiveTranslation.zip",
                      checksum: "c66728a4e5718604817d0e7098e43c0994b32d213feacd8ca86c96ba9a24aef3"),
        .binaryTarget(name: "MediaCapture",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/MediaCapture.zip",
                      checksum: "6117a466b6a9749d9c7e3bab8a223f78c9391761525c173f04715693650d256d"),
        .binaryTarget(name: "AdvancedAnnotations",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/AdvancedAnnotations.zip",
                      checksum: "a150c552f3254bf6895ba3f19f762f50147e9f8300e58de52bc0cdf47868057a"),
        .binaryTarget(name: "Multiparty",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/Multiparty.zip",
                      checksum: "e5453d8e40d07fac25da959a310dd66fff883506c1d0b2d04e955fc4066e3eac"),
        .binaryTarget(name: "SCWormhole",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/SCWormhole.zip",
                      checksum: "fb7d185a6bfdcb765c7494d7b7d58425e327d039d804049f489102be02888180"),
        .binaryTarget(name: "Permissions",
                      url: "https://sightcall-ios-cocoapods.s3.amazonaws.com/universalSDK/3.8.0-alpha3/Permissions.zip",
                      checksum: "9eaf188800cb1fef148ab63449c998314a877fe1694358fc6898021c141d430b"),
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
                    "SVGgh"
                ])
    ]
)
