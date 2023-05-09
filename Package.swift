// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230508/TensorFlowLiteC.xcframework.zip", checksum: "b326334f08cedca225ee73b671733bae079adb40b0ba32a91f94958e626901c7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0adb29e62d3aadc2fcf6300133db73b1123c6c7a6d89c9a827de97c60b6e404d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230508/TensorFlowLiteCMetal.xcframework.zip", checksum: "50426a6a5c22bea6595be47df1dde95d47d5bf79627988cd481caf173f342797"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
