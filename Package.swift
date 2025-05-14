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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteC.xcframework.zip", checksum: "534e7eece9c61186d7b151fff5d24671203a557b68d15b1144b86a52a89f3c28"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a3c8edc8d4cd3d14e6b918c776275af77a67f7358fbda78a72767575ba95a393"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCMetal.xcframework.zip", checksum: "457170e2928457cdc8127823f4315c5b6777662901eb4dd7d5976abb74d0332a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
