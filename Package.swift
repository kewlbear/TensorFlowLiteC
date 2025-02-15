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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteC.xcframework.zip", checksum: "379d8d0b7854287e2c8c250de0b522c8542b580e242e88e7b05fd20568e725a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8a109d7fd8fae4d43216570c7ded3b184d0a85d55adb611a5b1865080f7701d9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e531756ac9b9b4e87ffb9184c8855ea0b4e525edc9304f1c15fe1d9d78a15a4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
