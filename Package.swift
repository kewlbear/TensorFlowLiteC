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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230308/TensorFlowLiteC.xcframework.zip", checksum: "cd2c52e9aae5de082691cfe0e096e23b51022a99f4f3b27031f4c50fc350fb7c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "27cec61e6e9e0121c95a3be8446f29477c6823ebfe1a1a687d6ba5e0aec5c82b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230308/TensorFlowLiteCMetal.xcframework.zip", checksum: "0e9ce9a3eeea15c054790cb7c9f87142082047f2938b5a32dcd0e01db0ecb973"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
