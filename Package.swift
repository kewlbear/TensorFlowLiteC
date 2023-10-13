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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231012/TensorFlowLiteC.xcframework.zip", checksum: "55d39c318e0c4d29c8419cde69f56febd00b8f82c71063a0a0d2d6c374ce0081"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8a4030adb99ca0d066a6a5d9d7dc87aaf62956bc6c350d53f710e20eec5181f5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231012/TensorFlowLiteCMetal.xcframework.zip", checksum: "c1ccf26c25b79fbc8833c932a79d48ce9c2a790d5ee4c91c666340339ea3d74d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
