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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220904/TensorFlowLiteC.xcframework.zip", checksum: "1ea81bc6b28be67427f276cf098b06f5d157ed02cb0fe4a6799d6f7e69569b76"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220904/TensorFlowLiteCCoreML.xcframework.zip", checksum: "193deaba97e11c97f4abadbbaa6bb13037366836175d359321605e9962783aa1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220904/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f31ad887d64afa8f05c5c688b1e121a95c795ec02b82f3f5f2bc43038f8b86e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
